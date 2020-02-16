%clear the work space and close all open figure windows
clear;
clear all;
close all;
%read in 
Filename  = 'nuclei.02.png';
pic = imread(Filename);
[vres,hres,channels]=size(pic);
T1 = 45; T2 = 255;
D1 = zeros(size(pic));
% D1 = (pic>=T1) &(pic<=T2)
for i = 1 : vres
    for j = 1 : hres
        current_pixel = pic(i , j);
        if current_pixel < T1
            D1(i,j)  =  0;
        end
        if current_pixel > T1 && current_pixel < T2
            D1(i,j) = 255;
        end
    end
end


            
figure(1);            
imshow(D1);
title('REGION')
figure(2);
imshow(pic);
title('Orignal')

