clc;
clear;

imgRGB = imread('rgb.jpg');
r = imgRGB(:,:,1);
g = imgRGB(:,:,2);
b = imgRGB(:,:,3);

imgRGB2 = cat(3,r,g,b); #juntando

rc = r + 100;
gc = g + 100;
bc = b + 100;

ra = cat(3,rc,g,b); #juntando
ga = cat(3,r,gc,b); #juntando
ba = cat(3,r,g,bc); #juntando

figure(1), subplot(3,4,1), imshow(imgRGB), title('imagem original');
figure(1), subplot(3,4,2), imshow(r), title('imagem Red');
figure(1), subplot(3,4,3), imshow(g), title('imagem Green');
figure(1), subplot(3,4,4), imshow(b), title('imagem Blue');
figure(1), subplot(3,4,5), imshow(rc), title('imagem Red clara');
figure(1), subplot(3,4,6), imshow(gc), title('imagem Green clara');
figure(1), subplot(3,4,7), imshow(bc), title('imagem Blue clara');
figure(1), subplot(3,4,11), imshow(imgRGB2), title('imagem RGB nova');
figure(1), subplot(3,4,8), imshow(ra), title('imagem Red');
figure(1), subplot(3,4,9), imshow(ga), title('imagem Green');
figure(1), subplot(3,4,10), imshow(ba), title('imagem Blue');


figure(2), imshow(r+100), title('imagem clara');

