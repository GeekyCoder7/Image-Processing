A=imread('image.jpeg');
B = rgb2gray(A);
BW = imbinarize(B,'adaptive','ForegroundPolarity','dark','Sensitivity',0.1);
figure
imshowpair(B,BW,'montage');