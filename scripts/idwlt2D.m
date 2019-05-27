function [X] = idwlt2D(h0,h1,varargin)
%IDWLT2D calculates inverse Haar wavelet transform of X with
% low pass filter h0 and high pass filter h1 from its 
% approximation image A and detail images V,H,D.
% X: reconstructed image

if nargin == 3
    Y = varargin{1};
elseif nargin == 6
    A = varargin{1};
    V = varargin{2};
    H = varargin{3};
    D = varargin{4};
    Y = [A,V;H,D];
else
     error('input arguments must be either [h0,h1,Y] or [h0,h1,A,V,H,D]');
end
        
[nr,nc] = size(Y);
X = zeros(nr,nc);

% 1D inverse Haar wavelet transform on COLUMNS:
for i = 1:nc
    X(:,i) = idwlt(Y(1:nr/2,i)',Y(nr/2+1:nr,i)',h0,h1)';
end

% 1D inverse Haar wavelet transform on ROWS:
for i = 1:nr
    X(i,:) = idwlt(X(i,1:nc/2),X(i,nr/2+1:nr),h0,h1);
end

end


