#Deixar a img com 4 niveis de cinza
clear all;
clc;
img = imread('Lena512.bmp');
img4 = img;
[M,N] = size(img);


for i = 1:M
  for j = 1:N
   if img(i,j) <= 30
     img4(i,j) = 0;
   elseif
     img(i,j) <= 60
    img4(i,j) = 50;
     elseif
     img(i,j) <= 90
    img4(i,j) = 100;
     elseif
    img(i,j) <= 120
    img4(i,j) = 150;
     elseif
    img(i,j) <= 150
    img4(i,j) = 200;
     elseif
    img(i,j) <= 180
    img4(i,j) = 250;
     elseif
    img(i,j) <= 210
    img4(i,j) = 300;
  else
    img4(i,j) = 255;
   endif
  endfor
endfor

figure(1),imshow(img);
figure(2),imshow(img4);
