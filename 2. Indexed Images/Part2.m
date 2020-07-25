I = imread('corn.tif');

whos I;%size = 415x312 , Class: uint8
figure;
imshow(I);
imwrite(I,'corn.gif')

A = gray2ind(I);%creates an indexed image from a grayscale intensity image
figure;
imshow(A);