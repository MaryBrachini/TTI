#equalizar histograma
clear all;
clc;
pkg load image;

imgEsc = imread('ImagemTesteEscuro.bmp');

imgEq = histeq(imgEsc); #histograma = grafico
imgEq = imgEq*255;
imgEq = uint8(imgEq);


figure(1),colormap(gray),imshow(imgEsc), title('Imagem escura');
figure(2),colormap(gray),imshow(imgEq), title('imagem equalizada');
figure(3),colormap(gray),imhist(imgEsc), title('Histograma da imagem escura');
figure(4),colormap(gray),imhist(imgEq), title('Histograma da imagem equalizada');
