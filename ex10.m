#Recortar imagem
clear all;
clc;

pkg load image;

imglena = imread('Lena512.bmp');
imgRecort = imcrop(imglena,[100,100,180,180]);#começa linha/coluna termina linha/coluna


figure(1),imshow(imglena), title('Imagem Lena');
figure(2),imshow(imgRecort), title('Imagem Cortada');
