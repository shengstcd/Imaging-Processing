%clear the work space and close all open figure windows
clear;
clear all;
close all;
%read in 
Filename  = 'pool.02.bmp';
pic = imread(Filename);
[vres,hres,channels]=size(pic);

T1r = 50; T2r = 100;
T1g = 120; T2g = 200;
T1b =40 ; T2b = 60;

D1 = zeros(size(pic));
R = pic(:,:,1);
G = pic(:,:,2);
B = pic(:,:,3);
mask1 = (G>=T1g) &(G<=T2g)
mask2 = (R>=T1r) &(R<=T2r)&(G>=T1g) &(G<=T2g)&(B>=T1b) &(B<=T2b);
figure(1)
imshow(mask1)
title('Green channel')
figure(2)
title('All the Channel')
imshow(mask2);
  



hsv = rgb2hsv(pic);
hsv1 = rgb2gray(hsv);
histogram(hsv);
for i = 1 : vres
    for j = 1 : hres
        current_pixel = hsv(i , j);
       
        
        if current_pixel > 0.3 && current_pixel < 0.32
            D4(i,j) = 255;
        else D4(i,j) = 0;
        end
    end
end

figure(8);            
imshow(D4);
title('HSV')



% 
% for i = 1 : vres
%     for j = 1 : hres
%         
%         if R(i,j) > T1r && R(i,j) < T2r
%             D1(i,j,1) = 1;
%         else D1(i,j,1) = 0;
%         if G(i,j) > T1g && G(i,j) < T2g
%             D1(i,j,2) = 1;    
%             else D1(i,j,2) = 0;
%         if B(i,j)> T1b && B(i,j) < T2b
%             D1(i,j,3) = 1;    
%             else D1(i,j,3) = 0;
%         
%             
%         end
%     end
%         end
%     end
% end
% D1 = rgb2gray(D1)
%       image(D1);  
%         
%         
% % D2 = zeros(size(pic));
% % for i = 1 : vres
% %     for j = 1 : hres
% %         current_pixel = G(i , j);
% %         
% %         if current_pixel > T1g && current_pixel < T2g
% %             D2(i,j) = 255;
% %         else  D2(i,j) = 0;
% %         end
% %         
% %     end
% % end
% % D3 = zeros(size(pic));
% % for i = 1 : vres
% %     for j = 1 : hres
% %         current_pixel = B(i , j);
% %         if current_pixel < T1b
% %             D3(i,j)  =  0;
% %         end
% %         if current_pixel > T1b && current_pixel < T2b
% %             D3(i,j) = 255;
% %         end
% %     end
% % end
% % D1 = rgb2gray(D1);
% % D2 = rgb2gray(D2);
% % D3 = rgb2gray(D3);
% % 
% %             
% % figure(1);            
% % imshow(D1);
% % title('REGION RED')
% % figure(2);
% % imshow(pic);
% % title('Orignal')
% % figure(3);            
% % imshow(D2);
% % title('REGION Green')
% % figure(4);            
% % imshow(D3);
% % title('REGION Blue')
% % figure(5);
% % histogram(pic( : , : , 1) );title('RED CHANNELS');
% % figure(6);
% % histogram(pic( : , : , 2) );title('GREEN CHANNELS');
% % figure(7);
% % histogram(pic( : , : , 3));title('BLUE CHANNELS');
% % 
% % 
% % 
% % hsv = rgb2hsv(pic);
% % hsv1 = rgb2gray(hsv);
% % histogram(hsv);
% % for i = 1 : vres
% %     for j = 1 : hres
% %         current_pixel = hsv(i , j);
% %        
% %         
% %         if current_pixel > 0.3 && current_pixel < 0.32
% %             D4(i,j) = 255;
% %         else D4(i,j) = 0;
% %         end
% %     end
% % end
% % 
% % figure(8);            
% % imshow(D4);