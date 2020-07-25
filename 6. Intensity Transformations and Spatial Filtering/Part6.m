I = imread('moon.tif');

J = imdivide(I,2);

K = immultiply(I,0.5);


subplot(3, 3, 1);
imshow(I);
fontSize = 20;
title('moon.tif' , 'FontSize', fontSize)
subplot(3, 3, 3);
imshow(J);
title( 'moon.tif divided by 2' ,'FontSize', fontSize);
subplot(3, 3, 5);
imshow(K)
title( 'moon.tif multiplied by 0.5' , 'FontSize', fontSize );

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0, 1, 1]);

%Dividing an image by 2 and multiplying by 0.5 result to the same image.