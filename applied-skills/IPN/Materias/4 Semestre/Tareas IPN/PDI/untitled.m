%cls; clear all; close all;
%escala de grisises 256
[rgb,map]=imread("descarga.jpg");
%r=rgb(1,1,1)
r=rgb(:,:,1);
g=rgb(:,:,2);
b=rgb(:,:,3);

imshow(r)

I=rgb2gray(rgb);


[Count,X]=imhist(I);
h=Count;
va=0;
for v=1:256
    H(v)=va+Count(v);
    va=H(v);


end


