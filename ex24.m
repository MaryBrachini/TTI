#extrair marca
clc;
clear all;

img = imread('marcaAulaCorida.bmp');

[M,N] = size (img(:,:,1));
for i = 1:M
  for j = 1:N
    msg(i,j)=bitget(img(i,j),1);
  endfor
endfor

msg = msg*255;


figure(1), subplot(1,2,1),imshow(img),title('Imagem Junta');
figure(1), subplot(1,2,2),imshow(msg),title('mensagem Adulterado');
