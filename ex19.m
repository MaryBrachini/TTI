clc;
clear;

img = imread('cameraman128.bmp');

imgRuido = imnoise(img, 'salt & pepper');

filtro = [1,1,1;1,1,1,;1,1,1];
filtro = filtro/9;

imgSuavizada = conv2(filtro, imgRuido);
imgSuavizada = uint8(imgSuavizada);

figure(1),subplot(1,2,1),imshow(imgRuido);
figure(1),subplot(1,2,2),imshow(imgSuavizada);
