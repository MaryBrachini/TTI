clc;
clear;

imgRGB = imread('rgb.jpg');
r = imgRGB(:,:,1);
g = imgRGB(:,:,2);
b = imgRGB(:,:,3);

imgRGB2 = cat(3,r,g,b);

figure(1), subplot(2,2,1), title('imagem original'), imshow(imgRGB);
figure(1), subplot(2,2,2), title('imagem Banda R'), imshow(r);
figure(1), subplot(2,2,3), title('imagem Banda G'), imshow(g);
figure(1), subplot(2,2,4), title('imagem Banda B'), imshow(b);

figure(2), title('imagem original'), imshow(imgRGB2);

