#Deixar a img do if junto com lena
clear all;
clc;
imgMaior = imread('Lena512.bmp');
imgMenor = imread('if30.bmp');

[M,N] = size(imgMenor);

imgNova = imgMaior;

for i = 1:M
  for j = 1:N
    imgNova(i,j) = (imgMenor(i,j));
  endfor
endfor

#mostra as 3 imagens na mesma figure separando por quadrantes de 2 linhas por 2 colunas e o terceiro é a posicao
figure(1),subplot(2,2,1),imshow(imgMaior);
figure(1),subplot(2,2,3),imshow(imgMenor);
figure(1),subplot(2,2,4),imshow(imgNova);

figure(2),imshow(imgNova);

imwrite(imgNova,'lenaif.bmp'); #salvar a imgNova
