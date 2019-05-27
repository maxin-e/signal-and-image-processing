function [Y,A,V,H,D] = dwlt2D(X,h0,h1)
% DWLT2D performs Haar wavelet transform on image X 
% using low pass filter h0 and high pass filter h1
    % A: approximation/scale (LL)
    % V: vertical details (HL)
    % H: horizontal details (LH)
    % D: diagonal details (HH)

[nr,nc] = size(X);

Y = zeros(nr,nc);

% 1D Haar wavelet transform on ROWS:
for i = 1 : nr
    [a,b] = dwlt(X(i,:),h0,h1);
    Y(i,:) = [a,b];
end

% 1D Haar wavelet transform on COLUMNS:
for i = 1 : nc
    [a,b] = dwlt(Y(:,i),h0,h1);
    Y(:,i) = [a;b];
end

A = Y(1:nr/2,1:nc/2);
V = Y(1:nr/2,nc/2+1:nc);
H = Y(nr/2+1:nr,1:nc/2);
D = Y(nr/2+1:nr,nc/2+1:nc);

end

