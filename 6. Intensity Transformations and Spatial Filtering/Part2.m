%Histogram Equalization

img1 = imread('pout.tif');
figure;
imshow(img1);
title( 'Original Image' );


figure;
h6 = histogram(img1);
title( 'Histogram of orignal Image' );

img1_equalized = histeq( img1 );

figure;
imshow(img1_equalized);
title( 'Equalized Image' );

figure;
h1 = histogram( double( img1_equalized(:) ), ( 0:255 ) );
title( 'Histogram of equalized Image' );

%In the histogram of the original image, the bins are distributed to the
%left, showing that the image is dark.

%In the histogram of the equalized image, the bins are evenly distributed
%along the range, showing that the image is clear, not so bright, nor dark.