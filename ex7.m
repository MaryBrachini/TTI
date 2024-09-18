#logo di if converter cor e tamanho
clear all;
clc;
pkg load image;

imgIF = imread('if.jpg');

imgIFG = rgb2gray(imgIF); #converte para cinza

imgMenor = imresize(imgIFG,0.7);

figure(1),imshow(imgIF), title('Imagem usada de fundo');
figure(2),imshow(imgIFG), title('Logotipo');
figure(3),imshow(imgMenor), title('Imagem Menor');

figure(4),subplot(1,3,1),imagesc(imgIF), title('Imagesc');
figure(4),subplot(1,3,2),imagesc(imgIFG);
figure(4),subplot(1,3,3),imagesc(imgMenor);

figure(5),subplot(1,3,1),colormap(gray),imagesc(imgIF), title('ColorMap');
figure(5),subplot(1,3,2),colormap(gray),imagesc(imgIFG);
figure(5),subplot(1,3,3),colormap(gray),imagesc(imgMenor);
