function [Y] = hardThreshold2D(X,lambda)
%HARDTHRESHOLD2D applies a hard threshold lambda to image X
%   X: image
%   lambda: threshold

%   [Y]: thresholded image

Y = X;
[nr,nc] = size(X);

for i = 1:nr
    for j = 1:nc
        if abs(X(i,j)) <= lambda
            Y(i,j) = 0;
        end
    end
end

end
