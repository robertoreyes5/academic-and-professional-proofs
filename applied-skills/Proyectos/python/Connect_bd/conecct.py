import mysql.connector

# Establecer conexión
conexion = mysql.connector.connect(
    host="127.0.0.1",
    user="root",
    password="admin",
    database="php_login_database"
)

# Crear un cursor
cursor = conexion.cursor()

# Ejecutar una consulta SELECT
cursor.execute("SELECT * FROM users")

# Obtener los resultados
resultados = cursor.fetchall()

# Imprimir los resultados
for fila in resultados:
    print(fila)

# Cerrar conexión
conexion.close()