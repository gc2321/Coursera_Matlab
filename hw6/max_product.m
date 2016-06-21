function [ product, ind ] = max_product( v, n )

if length(v)< n
    product = 0;
    ind = -1;
    return;
end;

i = 1;
while i+n<=length(v)+1
    product_array(i) = prod(v(i:1:i+n-1));
    i = i+1;
end

[product, ind] = max(product_array);

end

