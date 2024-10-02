clc;
clear;

img = imread('cameraman128.bmp');

imgRuido = imnoise(img, 'salt & pepper');

[M,N] = size(img);

imgSuavizada = imgRuido;
imgSuavizada = double(imgSuavizada);

for i=2:M-1
  for j=2:N-1
   filtro = [(imgSuavizada(i-1,j-1)) (imgSuavizada(i-1,j)) (imgSuavizada(i-1,j+1))
             (imgSuavizada(i,j-1)) (imgSuavizada(i,j)) (imgSuavizada(i,j+1))
             (imgSuavizada(i+1,j-1)) (imgSuavizada(i+1,j)) (imgSuavizada(i+1,j+1))];

   vet = reshape(filtro,1,9);
   vet2 = sort(vet);
   imgSuavizada(i,j) = vet2(5);

  endfor
endfor

imgSuavizada = uint8(imgSuavizada);
figure(1),subplot(1,2,1),imshow(imgRuido);
figure(1),subplot(1,2,2),imshow(imgSuavizada);
