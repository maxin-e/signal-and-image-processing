%% IDWLT
%  Calculates the inverse Haar wavelet transform of x with low-pass filter c and
%  high-pass filter d. x is assumed to be divisible by 2.
function [x] = idwlt(a,b,c,d)

a_r = kron(a,[1,0]);
b_r = kron(b,[1,0]);

c_r = flip(c);
d_r = flip(d);

C_r = filter(c_r, 1, a_r);
D_r = filter(d_r, 1, b_r);

x = C_r + D_r;
