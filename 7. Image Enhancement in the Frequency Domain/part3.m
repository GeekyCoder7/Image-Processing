close all; clc;
%Load image
img = imread('cameraman.tif');
img_dft = fft2(double(img));

%Generate distance matrix
[M,N] = size(img);
dist = distmatrix(M,N);

%Creating ideal lpf
B = zeros(M,N);
ind = dist <=25;
B(ind) = 1;
Hd = double(B);

subplot(2, 2, 1);
imshow(fftshift(B));
title('ideal lpf','fontSize',25);


%Display filter's frequency response.
frq_res = freqz2(B,[M,N]);

subplot(2, 2, 2);
imshow(real(frq_res));
title('frequency response','fontSize',25);

%Apply filter
DFT_filt = Hd .* img_dft;
img2 = real(ifft2(DFT_filt));

subplot(2, 2, 3);
imshow(log(abs(fftshift(DFT_filt))),[]);
title('filtered FT','fontSize',25);

subplot(2, 2, 4);
imshow(img2);
title('filtered image','fontSize',25);
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0, 1, 1]);
%We can notice the body of the camera man (rest of the image being
%filtered).