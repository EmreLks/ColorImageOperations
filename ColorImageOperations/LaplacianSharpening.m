clc
close all
clear all

image = imread('question_3.tif');

figure(1);
imshow(image);

[rows, columns] = size(image);

HSV = rgb2hsv(image);

H = HSV(:,:,1);
S = HSV(:,:,2);
% I = (R + G + B) / 3
I = HSV(:,:,3);

newI = ApplyLaplacian(I);


HSV(:,:,3) = newI;
rgbResult = hsv2rgb(HSV);

figure(2);
imshow(rgbResult);