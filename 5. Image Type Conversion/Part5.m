[X, map] = imread('trees.tif');
figure;
imshow(imread('trees.tif'));
grayImage = ind2gray(X, map);
figure;
imshow(grayImage);

rgbImage = ind2rgb(X, map);
figure;
imshow(rgbImage);

grayScaleImage = rgb2gray(rgbImage);
figure;
imshow(grayScaleImage);
imwrite(grayScaleImage,'trees.jpg')