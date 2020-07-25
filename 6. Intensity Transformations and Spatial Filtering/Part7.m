A = imread('circlesBrightDark.png');
B = 255 - A;
C = imcomplement(A);
D = imadjust(A,[0,1],[1,0]);

subplot(3, 3, 1);
imshow(A);
fontSize = 20;
title('Original', 'FontSize', fontSize)
subplot(3, 3, 2);
imshow(B);
fontSize = 20;
title('Simple substraction', 'FontSize', fontSize)
subplot(3, 3, 3);
imshow(C);
title( 'Imcomplement function' ,'FontSize', fontSize);
subplot(3, 3, 5);
imshow(D)
title( 'Imadjust function', 'FontSize', fontSize );

set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0, 1, 1]);

%To be honest, I didn't see any difference between the 3 methods.
