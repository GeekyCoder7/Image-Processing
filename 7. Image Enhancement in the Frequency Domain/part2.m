close all; clc;
img = imread('cameraman.tif');
figure;
subplot(1,2,1);
imshow(img);
title('Original Image','fontSize',25);

h = fspecial('average');

img_filt = imfilter(img,h);
subplot(1,2,2);
imshow(img_filt);
title('Filtered Image','fontSize',25);
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0, 1, 1]);