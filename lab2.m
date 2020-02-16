%clear the work space and close all open figure windows
clear;
clear all;
close all;
%read in 
%% read in image , change it to grayscale, Get the size 
%% O is the new range. M is the Sloop 
  name = 'Sigmedia15979.TIF ' ;
  pic = imread(name);
  G = rgb2gray(pic);
  G1 = rgb2gray(pic); 
  [vres,hres,channels] = size(pic);
  T1 = 55; T2 = 200;
  O = T2 - T1 ; M = 255 / O;
  % Get rid of the pixel from 0-55 and 200-255
  for i = 1 : vres ;
    for k = 1 : hres ;
      if G (i,k)< T1;
        G(i,k) = 0;
      elseif G(i,k) > T2;
        G(i,k) = 255;
      else
        G(i,k) = G(i,k);
      end
    end
  end
%% M*K is Slope  T1 *M is y-intercept
% Reflect pixel value from 55- 220 into 0-255
% Linear function Reflect 
y= M * G - T1 *M; 

%% show the outcomes
 figure(1)
 imshow(y)
 title('Enhancement')
 figure(2)
 imshow(G1)
 title('Orignial')

