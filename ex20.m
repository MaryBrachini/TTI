clc;
clear;

s = [1,2,1;0,0,0,;-1,-2,-1];

s2 = [-1,-2,-1;2,4,2;-1,-2,-1];

s3 = [-1,2,-1;-1,2,-1;-1,2,-1];

img = zeros(10,10);
img(3:7,3:7)=1;

b = conv2(s,img);

b2 = conv2(s2,img);

b3 = conv2(s3,img);

figure(1),subplot(1,4,1),imshow(img);
figure(1),subplot(1,4,2),imshow(b);
figure(1),subplot(1,4,3),imshow(b2);
figure(1),subplot(1,4,4),imshow(b3);
