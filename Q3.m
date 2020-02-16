%clear the work space and close all open figure windows
clear;
clear all;
close all;
%read in 

name = 'sigmedia06907.tif ' ;
pic = imread(name);
%pic = im2doube(pic);
 %pic = rgb2gray(pic);
[vres,hres,channels]=size(pic);
red = pic( : , : , 1) ;
green = pic( : , : , 2) ;
blue = pic( : , : , 3) ;

figure(1);
imshow(pic);
figure(2);
histogram(pic(:) , 256);
title('Orignial')
xlabel('Values of Greyscale')
ylabel('The number of Pixels')
figure(3);
histogram(red , 256, 'EdgeColor','r');
title('Red Channels')
xlabel('Values of Greyscale')
ylabel('The number of Pixels')
figure(4);
histogram(green , 256,'EdgeColor','g');
title('Green Channels')
xlabel('Values of Greyscale')
ylabel('The number of Pixels')
figure(5);
histogram(blue,256,'EdgeColor','b' );
title('Blue Channels')
xlabel('Values of Greyscale')
ylabel('The number of Pixels')
figure(6);
imshow(red);
title('Red Channel')
figure(7);
imshow(green);
title('Green Channel')
figure(8);
imshow(blue);
title('Blue Channel')
