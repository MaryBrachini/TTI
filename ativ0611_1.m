#
clc;
clear;

pkg load image
pkg load signal;

img = imread('lena128.bmp');

imgFreq = dct2(img); #img no dominio da frequencia

imgVolta = idct2(imgFreq); #volta a img para
imgVolta = uint8(imgVolta);

figure(1),subplot(1,3,1),imshow(img);
figure(1),subplot(1,3,2),colormap(gray), image(imgFreq);
figure(1),subplot(1,3,3),imshow(imgVolta);



