clc
clear
%% read in data
I = 'Sigmedia15979.TIF';
%convert unit8 to double and grayscale 
I = imread(I);
I = rgb2gray(I);
I = im2double(I);
[kernel] = Gfilter(2,4,'combined');%Choose the mode separable or combined
 tic
 for i = 1 : 1000;
img_gauss=imfilter(I,kernel,'conv');
img_gauss=imfilter(img_gauss,kernel','conv');
 end
 toc
 figure(1);
 imshow(img_gauss);
 
 figure(2);
 imshow(I);
 
%  tic
%  [kernelPP] = Gfilter(2,21,'combined');
%  for i = 1 : 1000;
% img_gauss=imfilter(I,kernelPP,'conv');
%  end
%  toc