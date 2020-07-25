I = imread('pout.tif');
figure;
imshow(I);
title( 'Orignal Image' );

figure;
h1 = histogram(I);
title( 'Histogram of Original Image' );

n = 2;  
Idouble = im2double(I); 
avg = mean2(Idouble);
sigma = std2(Idouble);

J = imadjust(I,[avg-n*sigma avg+n*sigma],[]);
figure;

imshow(J);
title( 'Adjusted Image' );

figure;
h2 = histogram(J);
title( 'Histogram of Adjusted Image' );

%The original image is dark.
%The adjusted image is clear.

%In the histogram of the original image, the bins are distributed to the
%left, showing that the image is dark.

%In the histogram of the adjusted image, the bins are evenly distributed
%along the range, showing that the image is clear, not so bright, nor dark.

