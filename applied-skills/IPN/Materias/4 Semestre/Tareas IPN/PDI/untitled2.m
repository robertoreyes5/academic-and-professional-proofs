%PROGRAMA 1: LECTURA Y GENERACION DE IMAGENES
%07/02/2023
clc; clear all; close all;
A= imread("descarga.jpg");
R=A(:,:,1);
G=A(:,:,2);
B=A(:,:,3);
figure(1)
% subplot(2,3,1) %solo cuando ploteamos en 2D columnas filas y posicion
imshow(A)
title("Imagen original")
xlabel('x')
ylabel('y')
grid
% 
subplot(2,3,4) %para la posicion columanas filas posicion
imshow(R)
title("Imagen rojo")
subplot(2,3,5)
imshow(G)
title("Imagen verde")
% subplot(2,3,6)
% imshow(B)
% title("Imagen azul")

%crear imagen haciendo nuestra matriz

% I1=ones(10);
% I2=eye(10); %matriz identidad

%posicionarse en una matriz

% I(3,5)=1; %fila y columna
% imshow(I)
%ctrl r comentar codigo