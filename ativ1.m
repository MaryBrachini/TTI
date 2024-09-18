#atividade1
clear all;
clc;

pkg load image;

imglena = imread('Lena512.bmp');
imgif = imread('if.jpg');

imgIFG = rgb2gray(imgif); #converte para cinza

imgNova = imglena;

for i = 255:512
  for j = 255:512
    imgNova(i,j) = (imgIFG(i/2,j/2));
  endfor
endfor

figure(1),subplot(2,3,2),imshow(imglena), title('Atividade 1');
figure(1),subplot(2,3,4),imshow(imgif);
figure(1),subplot(2,3,6),imshow(imgNova);

figure(2),imshow(imgNova);
