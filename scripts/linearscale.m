function[I_out] = linearscale(I_in, I_min_out, I_max_out)

I_in=double(I_in);

I_max_in=max(I_in(:));
I_min_in=min(I_in(:));

I_in2=I_in;

I_out=zeros(size(I_in2));
for int1=1:(size(I_in2,1))
    for int2=1:(size(I_in2,2))
        I_in2(int1,int2)=(I_in2(int1,int2)-I_min_in)/(I_max_in-I_min_in);
        if I_in2(int1,int2) <= I_min_out
            I_out(int1,int2) = 0;
        elseif I_in2(int1,int2) >= I_max_out
            I_out(int1,int2) = 1;
        else
            I_out(int1,int2)=(I_in2(int1,int2)-I_min_out)*(1/(I_max_out-I_min_out));
        end
    end
end