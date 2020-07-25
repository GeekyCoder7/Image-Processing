close all; clc;
%Part a
img = imread('cameraman.tif');

subplot(1, 3, 1);
imshow(img)
title('Original Image', 'FontSize', 20)

% part b
fft = fft2(im2double(img));
shiftedFFT = fftshift(fft);
absShiftedFFT = abs(shiftedFFT);
%we used absolute value to get rid of the negative values.

% part c,d
subplot(1, 3, 2);
imshow(absShiftedFFT,[]);
title('Direct Remap', 'FontSize', 20)
%part e
subplot(1, 3, 3);
imshow(log(1 + abs(shiftedFFT)),[]);
title('Log Remap', 'FontSize', 20)
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0, 1, 1]);

