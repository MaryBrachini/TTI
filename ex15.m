clc;
clear;

imglena = imread('lena128.bmp');
imgcamera = imread('cameraman128.bmp');

imgJuntas = uint8(zeros(256,128));


for i = 1:256
  for j = 1:128

    if i<129
      imgJuntas(i,j) = imglena(i,j);
    else
       imgJuntas(i,j) = imgcamera(i-128,j);
    endif

  endfor
endfor

figure(1),imshow(imgJuntas), title('Imagem juntas');
