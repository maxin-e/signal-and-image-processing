
function [HSI_out]= rgbtohsi(RGB_in)

RGB_in = im2double(RGB_in);

R = RGB_in(:,:,1);
G = RGB_in(:,:,2);
B = RGB_in(:,:,3);

I = 1/3*(R+G+B);
v1 = (-1/2)*(R+G)+B;
v2 = (sqrt(3)/2)*(R-G);

S = sqrt(v1.^2 + v2.^2);
H = atan2(v1, v2);

HSI_out(:,:,1) = H;
HSI_out(:,:,2) = S;
HSI_out(:,:,3) = I;