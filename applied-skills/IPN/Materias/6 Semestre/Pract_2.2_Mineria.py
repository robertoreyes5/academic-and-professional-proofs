# --------------------------------------------------------------------------------------------------------------------------------
# Practica 2.2: Adquisicion de Datos Hibrida e Integracion (ETL)
# Minería de datos
# Norberto Aziel Mejía Hernandez
# Roberto Misael Reyes Cruz
# 27-03-2026-Viernes
# --------------------------------------------------------------------------------------------------------------------------------

# =========================
# IMPORTACIÓN DE LIBRERÍAS
# =========================

import sqlite3
import pandas as pd
import requests
from bs4 import BeautifulSoup


# ============================================================
# FASE 1: SIMULACIÓN DE FUENTES LOCALES (SQL Y CSV)
# ============================================================

# ------------------------------------------------------------
# 1. Generar Base de Datos SQL
#    Tabla con tarifas de importación según calificación
# ------------------------------------------------------------

conexion = sqlite3.connect('tarifas.db')
cursor = conexion.cursor()

# Crear tabla si no existe
cursor.execute("""
    CREATE TABLE IF NOT EXISTS aduana (
        rating_id INTEGER,
        tarifa_gbp REAL
    )
""")

# Insertar tarifas por calificación
cursor.executemany(
    "INSERT INTO aduana VALUES (?, ?)",
    [(1, 5.0), (2, 4.0), (3, 3.0), (4, 2.0), (5, 1.0)]
)

conexion.commit()


# ------------------------------------------------------------
# 2. Generar archivo CSV con descuentos
# ------------------------------------------------------------

# DataFrame con descuento global de la tienda
df_descuentos = pd.DataFrame({
    'tienda_id': [5],
    'factor_descuento': [0.85]  # 15% de descuento
})

# Guardar CSV
df_descuentos.to_csv('descuentos.csv', index=False)

print("Base de datos y CSV generados correctamente.")


## ============================================================
# FASE 2: WEB SCRAPING + PREPROCESAMIENTO
# ============================================================

import requests
from bs4 import BeautifulSoup
import pandas as pd

# ------------------------------------------------------------
# 1. URL objetivo
# ------------------------------------------------------------

url_scraping = "http://books.toscrape.com/catalogue/page-9.html"

# ------------------------------------------------------------
# 2. Descargar contenido HTML
# ------------------------------------------------------------

respuesta_web = requests.get(url_scraping)
html_crudo = respuesta_web.text

# ------------------------------------------------------------
# 3. Parsear HTML
# ------------------------------------------------------------

sopa = BeautifulSoup(html_crudo, 'html.parser')

# ------------------------------------------------------------
# 4. Extraer bloques de libros
# ------------------------------------------------------------

bloques_libros = sopa.find_all('article', class_='product_pod')

registros = []

for libro in bloques_libros:
    # Título del libro
    titulo = libro.h3.a['title']

    # Precio en formato texto (£XX.XX)
    precio_raw = libro.find('p', class_='price_color').text

    # Calificación (segunda clase CSS: One, Two, Three...)
    clases_rating = libro.find('p', class_='star-rating')['class']
    rating_texto = clases_rating[1]

    registros.append({
        'titulo': titulo,
        'precio_raw': precio_raw,
        'rating_texto': rating_texto
    })

# ------------------------------------------------------------
# 5. Crear DataFrame crudo
# ------------------------------------------------------------

df_libros = pd.DataFrame(registros)

print(f"Libros extraídos: {len(df_libros)}")
print(df_libros.head())


# ------------------------------------------------------------
# 6. LIMPIEZA Y TRANSFORMACIÓN (ETL)
# ------------------------------------------------------------

# Normalización del título
df_libros['titulo'] = df_libros['titulo'].str.strip().str.lower()

# Conversión de precio a numérico (GBP)
df_libros['precio_gbp'] = (
    df_libros['precio_raw']
    .str.replace('[^0-9.]', '', regex=True)
    .astype(float)
)

# Mapeo de rating texto a número
mapa_rating = {
    'One': 1,
    'Two': 2,
    'Three': 3,
    'Four': 4,
    'Five': 5
}

df_libros['rating'] = df_libros['rating_texto'].map(mapa_rating)

# ------------------------------------------------------------
# 7. Dataset final de Fase 2
# ------------------------------------------------------------

df_libros = df_libros[['titulo', 'precio_gbp', 'rating']]

print("DataFrame final Fase 2:")
print(df_libros.head())

# ============================================================
# Fase 3: FUNCIÓN PARA OBTENER TIPO DE CAMBIO GBP a MXN
# ============================================================

import requests

def obtener_tipo_cambio(debug=False):
    url = "https://open.er-api.com/v6/latest/GBP"

    try:
        if debug:
            print("[INFO] Llamando a la API...")

        respuesta = requests.get(url, timeout=10)

        if debug:
            print(f"[INFO] Status: {respuesta.status_code}")

        respuesta.raise_for_status()
        datos = respuesta.json()

        if datos.get("result") != "success":
            raise ValueError("Respuesta inválida")

        tipo_cambio = datos["rates"]["MXN"]

        if debug:
            print(f"[OK] Tipo de cambio obtenido: {tipo_cambio}")

        return float(tipo_cambio)

    except Exception as error:
        if debug:
            print(f"[ERROR] {error}")
            print("[WARN] Se usará fallback")

        return 23.0  # Valor de respaldo


if __name__ == "__main__":
    tipo_cambio = obtener_tipo_cambio(debug=True)
    print(f"Tipo de cambio final: {tipo_cambio}")


# ============================================================
# FASE 4: ETL COMPLETA
# ============================================================

import pandas as pd
import sqlite3

# ------------------------------------------------------------
# 4. Leer base de datos SQL
# ------------------------------------------------------------

conexion = sqlite3.connect("tarifas.db")
df_tarifas = pd.read_sql("SELECT * FROM aduana", conexion)

# Renombrar columnas para coherencia
df_tarifas = df_tarifas.rename(columns={
    'rating_id': 'rating',
    'tarifa_gbp': 'tarifa_importacion'
})


# ------------------------------------------------------------
# 5. Leer CSV de descuentos
# ------------------------------------------------------------

df_descuentos = pd.read_csv("descuentos.csv")


# ------------------------------------------------------------
# 6. Obtener tipo de cambio
# ------------------------------------------------------------

tipo_cambio = obtener_tipo_cambio()


# ------------------------------------------------------------
# 7. Joins y aplicación de descuento
# ------------------------------------------------------------

df = df_libros.copy()

# Join con tarifas
df = df.merge(df_tarifas, on="rating", how="left")

# Aplicar descuento global
if not df_descuentos.empty:
    factor_descuento_global = df_descuentos['factor_descuento'].iloc[0]
else:
    factor_descuento_global = 1.0

df['factor_descuento'] = factor_descuento_global


# ------------------------------------------------------------
# 8. Manejo de valores nulos
# ------------------------------------------------------------

df["tarifa_importacion"] = df["tarifa_importacion"].fillna(0)


# ------------------------------------------------------------
# 9. Cálculo final de precio en MXN
# ------------------------------------------------------------

df["precio_mxn"] = (
    (df["precio_gbp"] * df["factor_descuento"] + df["tarifa_importacion"])
    * tipo_cambio
)


# ------------------------------------------------------------
# 10. Dataset final
# ------------------------------------------------------------

df_final = df[[
    "titulo",
    "rating",
    "precio_gbp",
    "factor_descuento",
    "tarifa_importacion",
    "precio_mxn"
]]

print(df_final.head())


# ============================================================
# FASE 5: EXPORTACIÓN
# ============================================================

nombre_archivo = "Mejia_Reyes_dataset_final.csv"

# Exportar CSV final
df_final.to_csv(nombre_archivo, index=False, encoding="utf-8")

print(f"Archivo '{nombre_archivo}' exportado correctamente.")

# Verificación
df_verificacion = pd.read_csv(nombre_archivo)
print(df_verificacion.head())