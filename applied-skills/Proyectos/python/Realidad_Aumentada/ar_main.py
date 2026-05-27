import argparse

import cv2
import numpy as np
import math
import os
from objloader_simple import *

# Número mínimo de coincidencias que deben encontrarse
# para considerar que el reconocimiento es válido
MIN_MATCHES = 10
DEFAULT_COLOR = (0, 0, 0)

def main():
    """
    Esta función carga la imagen de la superficie objetivo,
    """
    homography = None 
    # matriz de parámetros de la cámara (inventada pero funciona bastante bien para mí)  
    camera_parameters = np.array([[800, 0, 320], [0, 800, 240], [0, 0, 1]])
    # crear el detector de puntos clave ORB
    orb = cv2.ORB_create()
    # crear el objeto BFMatcher basado en la distancia de Hamming  
    bf = cv2.BFMatcher(cv2.NORM_HAMMING, crossCheck=True)
    # cargar la superficie de referencia que se buscará en la transmisión de video
    dir_name = os.getcwd()
    print("dir_name",dir_name)
    model = cv2.imread(os.path.join(dir_name, 'model.jpg'), 0)
    # Calcular los puntos clave y descriptores del modelo
    kp_model, des_model = orb.detectAndCompute(model, None)
    # Cargar el modelo 3D desde el archivo OBJ
    obj = OBJ(os.path.join(dir_name, 'fox.obj'), swapyz=True)  
    # inicializar la captura de video
    cap = cv2.VideoCapture(0)

    while True:
        # leer el fotograma actual
        ret, frame = cap.read()
        if not ret:
            print("No se puede capturar el video")
            return 
        # encontrar y dibujar los puntos clave del fotograma
        kp_frame, des_frame = orb.detectAndCompute(frame, None)
       # hacer coincidir los descriptores del fotograma con los descriptores del modelo
        matches = bf.match(des_model, des_frame)
        # ordenarlas en función de su distancia
        # cuanto menor sea la distancia, mejor será la coincidencia
        matches = sorted(matches, key=lambda x: x.distance)

        # calcular la homografía si se encuentran suficientes coincidencias
        if len(matches) > MIN_MATCHES:
            # diferenciar entre puntos de origen y puntos de destino
            src_pts = np.float32([kp_model[m.queryIdx].pt for m in matches]).reshape(-1, 1, 2)
            dst_pts = np.float32([kp_frame[m.trainIdx].pt for m in matches]).reshape(-1, 1, 2)
            # calcular la homografía
            homography, mask = cv2.findHomography(src_pts, dst_pts, cv2.RANSAC, 5.0)
            if args.rectangle:
                # Dibujar un rectángulo que marca el modelo encontrado en el fotograma
                h, w = model.shape
                pts = np.float32([[0, 0], [0, h - 1], [w - 1, h - 1], [w - 1, 0]]).reshape(-1, 1, 2)
                # proyectar esquinas en el fotograma
                dst = cv2.perspectiveTransform(pts, homography)
                # conectarlas con líneas
                frame = cv2.polylines(frame, [np.int32(dst)], True, 255, 3, cv2.LINE_AA)  
            # si se encontró una matriz de homografía válida, renderizar el cubo en el plano del modelo
            if homography is not None:
                try:
                    # obtener la matriz de proyección 3D a partir de la matriz de homografía y los parámetros de la cámara
                    projection = projection_matrix(camera_parameters, homography)  
                    # proyectar el cubo o modelo
                    frame = render(frame, obj, projection, model, False)
                    #frame = renderizar(frame, modelo, proyeccion)
                except:
                    pass
            # dibujar las primeras 10 coincidencias.
            if args.matches:
                frame = cv2.drawMatches(model, kp_model, frame, kp_frame, matches[:10], 0, flags=2)
            # mostrar el resultado

            cv2.imshow('frame', frame)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

        else:
            print("No se encontraron suficientes coincidencias  - %d/%d" % (len(matches), MIN_MATCHES))

    cap.release()
    cv2.destroyAllWindows()
    return 0

def render(img, obj, projection, model, color=False):
    """
    Renderizar un modelo OBJ cargado en el fotograma de video actual
    """
    vertices = obj.vertices
    scale_matrix = np.eye(3) * 3
    h, w = model.shape

    for face in obj.faces:
        face_vertices = face[0]
        points = np.array([vertices[vertex - 1] for vertex in face_vertices])
        points = np.dot(points, scale_matrix)
        # renderizar el modelo en el centro de la superficie de referencia. Para hacerlo,
        # los puntos del modelo deben desplazarse
        points = np.array([[p[0] + w / 2, p[1] + h / 2, p[2]] for p in points])
        dst = cv2.perspectiveTransform(points.reshape(-1, 1, 3), projection)
        imgpts = np.int32(dst)
        if color is False:
            cv2.fillConvexPoly(img, imgpts, DEFAULT_COLOR)
        else:
            color = hex_to_rgb(face[-1])
            color = color[::-1]  # invertir
            cv2.fillConvexPoly(img, imgpts, color)

    return img

def projection_matrix(camera_parameters, homography):
    """
    A partir de la matriz de calibración de la cámara y la homografía estimada,
    calcular la matriz de proyección 3D
    """
    # Calcular la rotación a lo largo de los ejes x e y, así como la traslación
    homography = homography * (-1)
    rot_and_transl = np.dot(np.linalg.inv(camera_parameters), homography)
    col_1 = rot_and_transl[:, 0]
    col_2 = rot_and_transl[:, 1]
    col_3 = rot_and_transl[:, 2]
    # normalizar vectores
    l = math.sqrt(np.linalg.norm(col_1, 2) * np.linalg.norm(col_2, 2))
    rot_1 = col_1 / l
    rot_2 = col_2 / l
    translation = col_3 / l
    # calcular la base ortonormal
    c = rot_1 + rot_2
    p = np.cross(rot_1, rot_2)
    d = np.cross(c, p)
    rot_1 = np.dot(c / np.linalg.norm(c, 2) + d / np.linalg.norm(d, 2), 1 / math.sqrt(2))
    rot_2 = np.dot(c / np.linalg.norm(c, 2) - d / np.linalg.norm(d, 2), 1 / math.sqrt(2))
    rot_3 = np.cross(rot_1, rot_2)
    # finalmente, calcular la matriz de proyección 3D del modelo al fotograma actual
    projection = np.stack((rot_1, rot_2, rot_3, translation)).T
    return np.dot(camera_parameters, projection)

def hex_to_rgb(hex_color):
    """
    Helper function to convert hex strings to RGB
    """
    hex_color = hex_color.lstrip('#')
    h_len = len(hex_color)
    return tuple(int(hex_color[i:i + h_len // 3], 16) for i in range(0, h_len, h_len // 3))


# Análisis de argumentos de línea de comandos
# NO TODOS SON SOPORTADOS AÚN
parser = argparse.ArgumentParser(description='Aplicación de realidad aumentada')

parser.add_argument('-r','--rectangle', help = 'dibujar un rectángulo delimitador de la superficie objetivo en el fotograma', action = 'store_true')
parser.add_argument('-mk','--model_keypoints', help = 'dibujar los puntos clave del modelo', action = 'store_true')
parser.add_argument('-fk','--frame_keypoints', help = 'dibujar los puntos clave del fotograma', action = 'store_true')
parser.add_argument('-ma','--matches', help = 'dibujar coincidencias entre puntos clave', action = 'store_true')
# TODO jgallostraa -> agregar soporte para especificar el modelo
#parser.add_argument('-mo','--model', help = 'Especificar el modelo a proyectar', action = 'store_true')
args = parser.parse_args()

if __name__ == '__main__':
    main()
