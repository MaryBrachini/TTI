#inseri marca
clc;
clear all;

img = imread('lenaRGB.png');
imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

mensagem = imread('mensagem512.bmp');

[M,N] = size (imgR);
for i = 1:M
  for j = 1:N
    imgMensagem(i,j)=bitset(imgR(i,j),1,mensagem(i,j));
  endfor
endfor

imgJunto = cat(3,imgMensagem, imgG, imgB);

imwrite(imgJunto,'marcaAulaCorida.bmp');

figure(1), subplot(2,2,1),imshow(img),title('Imagem Original');
figure(1), subplot(2,2,3),imshow(mensagem),title('Imagem mensagem');
figure(1), subplot(2,2,4),imshow(imgJunto),title('Imagem Junta');
