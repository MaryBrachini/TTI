clc;
clear;

img = imread('lena128.bmp');

imgDct = dct2(img);
imgAlt = imgDct;

for i = 1:2
  for j = 1:2
    imgAlt(i,j) = 0;
  endfor
endfor

imgIdct = idct2(imgAlt);
imgIdct = uint8(imgIdct);

figure(1),subplot(2,2,1),imshow(img), title('original');
figure(1),subplot(2,2,2),imshow(imgDct), title('DCT');
figure(1),subplot(2,2,4),imshow(imgIdct), title('original de volta');


