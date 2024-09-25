clc;
clear;
pkg load image;

imgLena = imread('Lena512.bmp');

invertido = imcomplement (imgLena);

figure(1), subplot(1,2,1), title('imagem original'), imshow(imgLena);
figure(1), subplot(1,2,2), title('imagem negativa'), imshow(invertido);
