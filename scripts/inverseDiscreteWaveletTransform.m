function [s] = inverseDiscreteWaveletTransform(a,d,Lp,Hp)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

n=length(Lp);

a_r = kron(a,[1,0]);
d_r = kron(d,[1,0]);

wrap=n/2-1;
pa_r =[a_r(length(a_r)-wrap:end),a_r,a_r(1:wrap)];
pd_r =[d_r(length(d_r)-wrap:end),d_r,d_r(1:wrap)];

A_r = filter(Lp,1,pa_r)/sqrt(2);
D_r = filter(Hp,1,pd_r)/sqrt(2);

s = A_r+D_r;

s = 2*s(2*(wrap+1):end);

end

