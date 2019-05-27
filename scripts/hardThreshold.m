function [y] = hardThreshold(s,lambda)
%HARDTHRESHOLD applies a hard threshold lambda to signal s
%   s: signal
%   lambda: threshold

%   [y]: thresholded signal

y = s;

for t = 1:length(s)
    if abs(s(t)) <= lambda
        y(t) = 0;
    end
end

end

