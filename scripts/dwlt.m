%% DWLT
%  Calculates the wavelet transform of x with low-pass filter c and
%  high-pass filter d. x is assumed to be divisible by 2.
function [a,b] = dwlt(x,c,d)

C = filter(c, 1, x);
D = filter(d, 1, x);

a = C(2:2:length(C));
b = D(2:2:length(D));