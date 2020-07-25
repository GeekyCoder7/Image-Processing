%Histogram Interpretion

img1 = imread('circuit.tif');

figure;
imshow(img1);
title( 'circuit.tif' );
figure;
h = histogram(img1);
title( 'Default histogram' );
figure;
h1 = histogram(img1);
h1.NumBins = 64;
title( 'Histogram with 64 bins' );
figure;
h2 = histogram(img1);
h2.NumBins = 32;
title( 'Histogram with 32 bins' );
figure;
h3 = histogram(img1);
h3.NumBins = 16;
title( 'Histogram with 16 bins' );

%I noticed that, by decreasing the number of bins, the width of the bin
%increases, and helps to get accurate data, easy to differentiate and well grouped.

%Part c
img2 = imread('highContrast.tif');
img3 = imread('lowContrast.tif');
img4 = imread('bright.tif');
img5 = imread('dark.tif');

figure;
h4 = histogram(img2);
title( 'highContrast image' );
%In this histogram for the high contrast image, the bins are distributed along
%the total range, covering all the ranges.

figure;
h5 = histogram(img3);
title( 'lowContrast image' );
%In this histogram for the low contrast image, the bins are concentrated
%along a relatively narrow range of tones, having a gaps between the bins.

figure;
h6 = histogram(img4);
title( 'bright image' );
%In this histogram for the bright image, the bins are shifted more to the
%right than to the left. However, we have a few bins to the left because of
%the dark spots in the image.

figure;
h7 = histogram(img5);
title( 'dark image' );
%In this histogram for the dark image, the bins are shifted more to the
%left than to the right.