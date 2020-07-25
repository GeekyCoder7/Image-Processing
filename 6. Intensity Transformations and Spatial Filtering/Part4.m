I = imread('moon.tif');
J = imadd(I,50);
figure;
imshow(I);
title( 'Original Image' );

maxValue = max(I(:)); %253
minValue = min(I(:)); %0
disp(maxValue);
disp(minValue);

figure;
imshow(J);
title( 'Brightened image by addition' );

maxValue = max(J(:)); %255
minValue = min(J(:)); %50
disp(maxValue);
disp(minValue);


%We can see the difference between pixel intensities for the original and
%the modified image. There is a difference because the image is now
%brighter than before and because of that the lowest pixel intensity is now
%50 instead of 0, and the highest pixel intensity is now 255 instead of
%253.

K = immultiply(I,1.2);
figure;
imshow(K);
title( 'Brightened image by multiplication' );

%For the brightened image by multtiplication, the dark regions around the
%moon do not become brighter because by multiplying the intensity of the
%dark regions by 1.2, we are not increasing the pixel intensities in the
%dark regions, because they have low pixel intensity and by multiplying
%them by a small factor, it will not display any changes.
%But in the brightened image by addition, we are increasing every pixel
%intensity by 50. This means that the most dark pixel having a pixel
%intensity of 0, after the addition will have an intensity of 50, which is
%brighter than dark.


