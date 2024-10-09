pkg load image;
clc;
clear;

[filename, pathname] = uigetfile('Selecione a Imagem');
[img] = imread(filename);

imgSobel = edge(img,'sobel');
imgCanny = edge(img,'canny',0.1);
imgRoberts = edge(img,'roberts', 0.01);
imgPrewitt = edge(img,'prewitt');

imwrite(imgSobel,'ImagemSobel.bmp');
imwrite(imgCanny,'ImagemCanny.bmp');
imwrite(imgRoberts,'ImagemRoberts.bmp');
imwrite(imgPrewitt,'ImagemPrewitt.bmp');

figure(1), subplot(3,3,2),imshow(img),title('Imagem Original');
figure(1), subplot(3,3,4),imshow(imgSobel),title('Imagem Filtro Sobel');
figure(1), subplot(3,3,6),imshow(imgCanny),title('Imagem Filtro Canny');
figure(1), subplot(3,3,7),imshow(imgRoberts),title('Imagem Filtro Roberts');
figure(1), subplot(3,3,9),imshow(imgPrewitt),title('Imagem Filtro Prewitt');
