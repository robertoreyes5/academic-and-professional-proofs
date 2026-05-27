# Imports PIL module 
from PIL import Image
import numpy as np

# open method used to open different extension image file
im = Image.open(r"C:/Users/IA/Documents/IPN Materias/4 Semestre/Tareas IPN/PDI/practicas/3/pato.jpg") 
  
componentes_rgb = []
npy = np.array(im)
# Itera a través de los canales de color (0 para rojo, 1 para verde, 2 para azul)
for canal in range(3):
    # Crea un arreglo NumPy para el canal actual
    componente = np.zeros_like(npy)
    componente[:, :, canal] = npy[:, :, canal]
    componentes_rgb.append(componente)

# Crea imágenes PIL a partir de los componentes de color separados
imagenes_rgb = [Image.fromarray(componente) for componente in componentes_rgb]

# Muestra las imágenes separadas
for i, imagen in enumerate(imagenes_rgb):
    imagen.show(title=f'Componente {i}')