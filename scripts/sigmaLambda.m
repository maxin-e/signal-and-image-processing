function [sigma,lambda] = sigmaLambda(b)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
N = 2*length(b);
med_b = median(b);
sigma_est = mad(b,1)/0.6745;
lambda = sigma_est*sqrt(2*log(N));
end

