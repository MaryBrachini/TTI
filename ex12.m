clc;
clear;

imgLena = imread('Lena512.bmp');
r1 = imnoise(imgLena,'gaussian');
r2 = imnoise(imgLena,'gaussian',0,0.003);
r3 = imnoise(imgLena,'salt & pepper');
r4 = imnoise(imgLena,'salt & pepper',0.05);


figure(1), subplot(3,3,2), title('imagem original'), imshow(imgLena);
figure(1), subplot(3,3,4), title('Ruido Gaussiano'), imshow(r1);
figure(1), subplot(3,3,6), title('Ruido Gaussiano, Med 0, Var 0.003'), imshow(r2);
figure(1), subplot(3,3,7), title('Ruido Sal e pimenta'), imshow(r3);
figure(1), subplot(3,3,9), title('Ruido Sal e pimenta, Int 0.05'), imshow(r4);
