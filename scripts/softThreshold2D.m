function [Y] = softThreshold2D(X,lambda)
%SOFTTHRESHOLD2D applies a soft threshold lambda to image X
%   X: image
%   lambda: threshold

%   [Y]: thresholded image

Y = X;
[nr,nc] = size(Y);

for i = 1:nr
    for j = 1:nc 
        if X(i,j) > lambda
            Y(i,j) = X(i,j)-lambda;
        elseif X(i,j) < -lambda
            Y(i,j) = X(i,j)+lambda;
        else 
            Y(i,j) = 0;
        end
    end
end

end

