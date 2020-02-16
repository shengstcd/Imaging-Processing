clc
clear all;
close all;
%% read in 
Filename = 'sigmedia06907.tif';
%sigma  = 2.5 ,size = 15*15
%Set the Kernel
[kernel]= Gfilter(2.5,15,'combined'); 
I = imread(Filename);
Out = imfilter(I ,kernel, 'replicate','conv');
R = Out(:,:,1);
G = Out(:,:,2);
B = Out(:,:,3);
%Get the unshapenmask change to double
Mask = G - Out;
I = im2double(I);
Mask = im2double(Mask);
%set up the threshold
%Get the Unsharpen Image
Threhold = 3
unsharpen = Threhold * Mask + I;
figure(1)
imshow(unsharpen)
figure(2)
imshow(I)
