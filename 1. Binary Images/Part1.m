I = imread('circbw.tif');

whos I;%size = 280x272 , Class: logical

figure;
imshow(I);
imwrite(I,'circbw.jpg');

A = rand(4);
figure;
imshow(A,'InitialMagnification','fit');