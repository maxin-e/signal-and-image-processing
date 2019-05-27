function [y] = softThreshold(s,lambda)
%SOFTTHRESHOLD applies a soft threshold lambda to signal s
%   s: signal
%   lambda: threshold

%   [y]: thresholded signal

y = s;

for t = 1:length(s)
    if s(t) > lambda
        y(t) = s(t)-lambda;
    elseif s(t) < -lambda
        y(t) = s(t)+lambda;
    else 
        y(t) = 0;
    end
end

