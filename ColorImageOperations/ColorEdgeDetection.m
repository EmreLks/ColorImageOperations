clc
close all
clear all

image = imread('question_4.tif');

figure(1);
imshow(image);

image = im2double(image);

red   = image(:,:,1);
green = image(:,:,2);
blue  = image(:,:,3);

[rows, columns, colorSpace] = size(image);

redVer   = VerticalDerivative(red);
greenVer = VerticalDerivative(green);
blueVer  = VerticalDerivative(blue);

redHor   = HorizantalDerivative(red);
greenHor = HorizantalDerivative(green);
blueHor  = HorizantalDerivative(blue);

edgeRed   = sqrt(redVer.^2 + redHor.^2);
edgeGreen = sqrt(greenVer.^2 + greenHor.^2);
edgeBlue  = sqrt(blueVer.^2 + blueHor.^2);

result = edgeRed + edgeGreen + edgeBlue;

figure(2);
subplot(2,2,1)
imshow(edgeRed);
title('Red')

subplot(2,2,2)
imshow(edgeGreen);
title('Green')

subplot(2,2,3)
imshow(edgeBlue);
title('Blue')

subplot(2,2,4)
imshow(result);
title('Total')