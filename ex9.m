#Juntar duas imagens
clear all;
clc;

pkg load image;

imglena = imread('lena128.bmp');
imgcamera = imread('cameraman128.bmp');
imgJuntas = uint8(zeros(128,256));

for i = 1:128
  for j = 1:256
    if j<129
      imgJuntas(i,j) = imglena(i,j);
    else
       imgJuntas(i,j) = imgcamera(i,j-128);
    endif
  endfor
endfor

figure(1),imshow(imgJuntas), title('Imagem juntas');
imwrite(imgJuntas, 'imgJuntas.bmp');
