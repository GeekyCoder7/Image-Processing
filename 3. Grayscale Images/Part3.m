I = imread('pout.tif');

whos I;%size = 291x240 , Class: uint8
figure;
imshow(I);

A = randi([0 255],3)
B = uint8(A);

figure;
imshow(B,'InitialMagnification','fit');

C = randi([0 1],3);
D = double(C);

figure;
imshow(D,'InitialMagnification','fit');