#Exercício aula 16/10/2024
#    2. Extrair as 3 mensagens da imagem que foi marcada;
#    • Apresentar a imagem que foi marcada;
#    • Apresentar as 3 mensagens extraídas;

pkg load image;
clc;
clear all;

img = imread('lenaRGB2.png');
imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

mensagem1 = zeros(M, N);

[M,N] = size (imgR);

for i = 1:M
  for j = 1:N
    imgMensagem1(i,j)= bitget(imgR(i,j), 1);
    imgMensagem2(i,j)= bitget(imgG(i,j), 1);
    imgMensagem3(i,j)= bitget(imgB(i,j), 1);
  endfor
endfor

mensagem1 = uint8(255 * mensagem1);

figure(1), subplot(3,3,2),imshow(img),title('Imagem mensagm');
figure(1), subplot(3,3,4),imshow(mensagem1),title('Imagem mensagem 1');
figure(1), subplot(3,3,5),imshow(mensagem2),title('Imagem mensagem 2');
figure(1), subplot(3,3,6),imshow(mensagem3),title('Imagem mensagem 3');
