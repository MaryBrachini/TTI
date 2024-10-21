#Exercício aula 16/10/2024
#1. Inserir informação para fins de esteganografia ou verificação de
#autenticidade em todas as bandas de uma imagem colorida, padrão RGB.

# OBS: em cada banda deve ser inserida uma mensagem diferente.
#    • Apresentar a imagem original;
#    • Apresentar a mensagem original;
#    • Apresentar a imagem com as mensagens inseridas.

pkg load image;
clc;
clear all;

img = imread('lenaRGB.png');
imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

mensagem1 = imread('mensagem1.bmp');
mensagem2 = imread('mensagem2.bmp');
mensagem3 = imread('mensagem3.bmp');

[M,N] = size (imgR);

for i = 1:M
  for j = 1:N
    imgMensagem1(i,j)=bitset(imgR(i,j),1,mensagem1(i,j));
     imgMensagem2(i,j)=bitset(imgG(i,j),1,mensagem2(i,j));
      imgMensagem3(i,j)=bitset(imgB(i,j),1,mensagem3(i,j));
  endfor
endfor

imgJunto = cat(3,imgMensagem1, imgMensagem2, imgMensagem3);

imwrite(imgJunto,'marcaAulaCorida.bmp');

figure(1), subplot(3,3,2),imshow(img),title('Imagem Original');
figure(1), subplot(3,3,4),imshow(mensagem1),title('Imagem mensagem 1');
figure(1), subplot(3,3,5),imshow(mensagem2),title('Imagem mensagem 2');
figure(1), subplot(3,3,6),imshow(mensagem3),title('Imagem mensagem 3');
figure(1), subplot(3,3,8),imshow(imgJunto),title('Imagem Junta');
