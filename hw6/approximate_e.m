function [e, k] = approximate_e( delta )

e = 2;
k = 1;
while abs(e - exp(1))> delta
    k =  k+1;
    fac = [1:1:k];
    e = e + 1/prod(fac);   
end


end

