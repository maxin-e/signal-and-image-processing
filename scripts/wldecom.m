%% WLDECOM
%  Calculates the wavelet decomposition of the signal x for N scales using
%  low-pass filter c and high-pass filter d.
%  The output C is a vector of the form [a^{j-N},b^{j-N},...,b^{j-1}],
%  where a^{j-N} are the finest approximation coefficients, b^{j-1} are the
%  coarsest detail coefficients and a^j=x.
function C = wldecom(x,N,c,d)

j = 0; % ### always?
a = x;
b = [];
C = [];

 for i = (j+1):N
     C = [b,C];
     [a,b] = dwlt(a,c,d);
 end
 
 C = [a,b,C];