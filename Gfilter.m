%% Shida Sheng  3/2/2020 
function [kernel] = Gfilter(sigma,ksize,type);
%  the variance of the filter should be positive and double style
if sigma > 0 ;
  sigma = sigma;
  sigma = double(sigma);
else
  print('Sigma should be positive');
end
% the size of the kernel should be integer
if ksize > 0;
  ksize = ksize;
  ksize = fix(ksize);
else
    print('Ksize should be positive integer');
end
%Use different model of kernel
t =  strcmp(type,'separable');
j = strcmp(type,'combined');
if  t == 1;
  siz = ([ksize ksize] - 1) / 2;
    [x y] = meshgrid(-siz : siz,-siz : siz);
      x = x(1,:);
        f = -(x.*x)./(2*sigma*sigma);
          Kernel = exp(f);
              %normalisation to 1
            sumh1 = sum(Kernel(:));
              Kernel = Kernel / sumh1;
elseif j == 1;
  siz = ([ksize ksize]-1)/2;
   [x y] = meshgrid(-siz:siz,-siz:siz);
      f1= -(x.*x+y.*y)./(2*sigma*sigma);
        Kernel = exp(f1);
    %normalisation to 1
      sumh1 = sum(Kernel(:));
          Kernel=Kernel/sumh1;
elseif (j~=1) &(t~=1);
  print('Wrong Input')
  Kernel = 'Wrong Input';
   disp('Wrong Input In third position! It must be separable or combined ')
end

kernel = Kernel;
end







