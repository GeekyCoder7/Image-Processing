I = imread('tools1.gif');
figure;
imshow(I);
title( 'tools1' );

J = imread('tools2.gif');
figure;
imshow(J);
title( 'tools2' );

K = imsubtract(I,J);
figure;
imshow(K);
title( 'Substracted image' );

A = imabsdiff(I,J);
figure;
imshow(A);
title( 'Absolute difference image of tools1 and tools2' );

%The substracted and the absolute difference images are both more or less the
%same. They are very similar, except that the tools in the image with the absolute
%difference is slightly brighter and more clear than the one in the substracted image.


subplot(3, 3, 1);
imshow(B);
fontSize = 20;
title('maskImage.tif', 'FontSize', fontSize)
subplot(3, 3, 3);
imshow(C);
title( 'liveImage.tif' ,'FontSize', fontSize);
subplot(3, 3, 5);
imshow(D)
title( 'Absolute difference image of maskImage and liveImage', 'FontSize', fontSize );

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0, 1, 1]);


%Medical Application: MRI
