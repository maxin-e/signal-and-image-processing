function [Y,A,V,H,D] = discreteWaveletTransform2D(X,Lp,Hp)
% discreteWaveletTransform2D performs wavelet transform 
% on image X using low pass filter Lp and high pass filter Hp
    % A: approximation/scale (LL)
    % V: vertical details (HL)
    % H: horizontal details (LH)
    % D: diagonal details (HH)

[nr,nc] = size(X);

Y = zeros(nr,nc);

% wavelet transform on ROWS:
for i = 1 : nr
    [a,b] = discreteWaveletTransform(X(i,:),Lp,Hp);
    Y(i,:) = [a,b];
end

% wavelet transform on COLUMNS:
for i = 1 : nc
    [a,b] = discreteWaveletTransform((Y(:,i))',Lp,Hp);
    Y(:,i) = [a';b'];
end

A = Y(1:nr/2,1:nc/2);
V = Y(1:nr/2,nc/2+1:nc);
H = Y(nr/2+1:nr,1:nc/2);
D = Y(nr/2+1:nr,nc/2+1:nc);

end

