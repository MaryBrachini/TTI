clc;
clear;

img = imread('cameraman128.bmp');

imgRuido = imnoise(img, 'salt & pepper');

[M,N] = size(img);

imgSuavizada3 = imgRuido;
imgSuavizada3 = double(imgSuavizada3);

imgSuavizada5 = imgRuido;
imgSuavizada5 = double(imgSuavizada5);

imgSuavizada7 = imgRuido;
imgSuavizada7 = double(imgSuavizada7);

#filtro 3x3
for i=2:M-1
  for j=2:N-1
   imgSuavizada3(i,j) = ((1*(imgSuavizada3(i-1,j-1))) + (1*(imgSuavizada3(i-1,j))) + (1*(imgSuavizada3(i-1,j+1))) +
   (1*(imgSuavizada3(i,j-1))) + (1*(imgSuavizada3(i,j))) + (1*(imgSuavizada3(i,j+1))) +
   (1*(imgSuavizada3(i+1,j-1))) + (1*(imgSuavizada3(i+1,j))) + (1*(imgSuavizada3(i+1,j+1))))/9;
  endfor
endfor

# Filtro 5x5
for i = 3:M-2
    for j = 3:N-2
        imgSuavizada5(i,j) = (1*(imgSuavizada5(i-2,j-2)) + (1*(imgSuavizada5(i-2,j-1))) + (1*(imgSuavizada5(i-2,j))) + (1*(imgSuavizada5(i-2,j+1))) + (1*(imgSuavizada5(i-2,j+2))) +
        (1*(imgSuavizada5(i-1,j-2))) + (1*(imgSuavizada5(i-1,j-1))) + (1*(imgSuavizada5(i-1,j))) + (1*(imgSuavizada5(i-1,j+1))) + (1*(imgSuavizada5(i-1,j+2))) +
        (1*(imgSuavizada5(i,j-2))) + (1*(imgSuavizada5(i,j-1))) + (1*(imgSuavizada5(i,j))) + (1*(imgSuavizada5(i,j+1))) + (1*(imgSuavizada5(i,j+2))) +
        (1*(imgSuavizada5(i+1,j-2))) + (1*(imgSuavizada5(i+1,j-1))) + (1*(imgSuavizada5(i+1,j))) + (1*(imgSuavizada5(i+1,j+1))) + (1*(imgSuavizada5(i+1,j+2))) +
        (1*(imgSuavizada5(i+2,j-2))) + (1*(imgSuavizada5(i+2,j-1))) + (1*(imgSuavizada5(i+2,j))) + (1*(imgSuavizada5(i+2,j+1))) + (1*(imgSuavizada5(i+2,j+2)))) / 25;
    endfor
endfor


# Filtro 7x7
for i = 4:M-3  # Ajustado para lidar com bordas
    for j = 4:N-3  # Ajustado para lidar com bordas
        imgSuavizada7(i, j) = (1*(imgSuavizada7(i-3, j-3)) + (1*(imgSuavizada7(i-3, j-2))) + (1*(imgSuavizada7(i-3, j-1))) + (1*(imgSuavizada7(i-3, j))) + (1*(imgSuavizada7(i-3, j+1))) + (1*(imgSuavizada7(i-3, j+2))) + (1*(imgSuavizada7(i-3, j+3))) +
        (1*(imgSuavizada7(i-2, j-3))) + (1*(imgSuavizada7(i-2, j-2))) + (1*(imgSuavizada7(i-2, j-1))) + (1*(imgSuavizada7(i-2, j))) + (1*(imgSuavizada7(i-2, j+1))) + (1*(imgSuavizada7(i-2, j+2))) + (1*(imgSuavizada7(i-2, j+3))) +
        (1*(imgSuavizada7(i-1, j-3))) + (1*(imgSuavizada7(i-1, j-2))) + (1*(imgSuavizada7(i-1, j-1))) + (1*(imgSuavizada7(i-1, j))) + (1*(imgSuavizada7(i-1, j+1))) + (1*(imgSuavizada7(i-1, j+2))) + (1*(imgSuavizada7(i-1, j+3))) +
        (1*(imgSuavizada7(i, j-3))) + (1*(imgSuavizada7(i, j-2))) + (1*(imgSuavizada7(i, j-1))) + (1*(imgSuavizada7(i, j))) + (1*(imgSuavizada7(i, j+1))) + (1*(imgSuavizada7(i, j+2))) + (1*(imgSuavizada7(i, j+3))) +
        (1*(imgSuavizada7(i+1, j-3))) + (1*(imgSuavizada7(i+1, j-2))) + (1*(imgSuavizada7(i+1, j-1))) + (1*(imgSuavizada7(i+1, j))) + (1*(imgSuavizada7(i+1, j+1))) + (1*(imgSuavizada7(i+1, j+2))) + (1*(imgSuavizada7(i+1, j+3))) +
        (1*(imgSuavizada7(i+2, j-3))) + (1*(imgSuavizada7(i+2, j-2))) + (1*(imgSuavizada7(i+2, j-1))) + (1*(imgSuavizada7(i+2, j))) + (1*(imgSuavizada7(i+2, j+1))) + (1*(imgSuavizada7(i+2, j+2))) + (1*(imgSuavizada7(i+2, j+3))) +
        (1*(imgSuavizada7(i+3, j-3))) + (1*(imgSuavizada7(i+3, j-2))) + (1*(imgSuavizada7(i+3, j-1))) + (1*(imgSuavizada7(i+3, j))) + (1*(imgSuavizada7(i+3, j+1))) + (1*(imgSuavizada7(i+3, j+2))) + (1*(imgSuavizada7(i+3, j+3)))) / 49;
    endfor
endfor


imgSuavizada3 = uint8(imgSuavizada3);
imgSuavizada5 = uint8(imgSuavizada5);
imgSuavizada7 = uint8(imgSuavizada7);

figure(1),subplot(1,4,1),imshow(imgRuido),title('imagem original');
figure(1),subplot(1,4,2),imshow(imgSuavizada3),title('imagem 3x3');
figure(1),subplot(1,4,3),imshow(imgSuavizada5),title('imagem 5x5');
figure(1),subplot(1,4,4),imshow(imgSuavizada7),title('imagem 7x7');
