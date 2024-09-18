#Deixar a img com 8 niveis de cinza
clear all;
clc;
img = imread('Lena512.bmp');

img8 = img/32; #divide para ficar com 8 mas são proximos valores
img8 = img8*32; #Multiplica o valor para abranger

figure(1),imshow(img);
figure(2),imshow(img8);
