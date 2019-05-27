function [X_thr] = threshold(X,thr)
%THRESHOLD X_thr contains nonzero (equal to X) elements only where 
% elements in X exceed the threshold thr.
thresh = bsxfun(@gt,X,thr);
X_thr = double(X).*thresh;
end

