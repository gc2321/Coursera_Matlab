function n = palin_product( dig, lim )

start = (10^dig)-1;
fini = 10^(dig-1);

n = Inf;
max = 0;
for i=start:-1:fini
    for j=start:-1:fini
       prod = i*j;
       if prod<lim && prod>max
           strnum = num2str(i*j);
           if strcmp(strnum, fliplr(strnum))
               n = prod;
               max = prod;  
           end    
       end    
    end    
end

if n == Inf
    n = 0;
    return;
end;

end
