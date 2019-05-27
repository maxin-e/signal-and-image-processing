function [equalizedimage_out] = histogramequalization(image_in)

hg=histcounts(double(image_in(:)),-0.5:255.5);

T=cumsum(hg);
T=T/T(end);
equalizedimage_out=zeros(size(image_in));
for cnt1=1:size(equalizedimage_out,1)
    for cnt2=1:size(equalizedimage_out,2)
        equalizedimage_out(cnt1,cnt2)=256*T(image_in(cnt1,cnt2)+1);
    end
end
equalizedimage_out=uint8(floor(equalizedimage_out));