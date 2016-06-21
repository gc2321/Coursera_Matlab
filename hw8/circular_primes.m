function np = circular_primes( n )

p = primes(n-1);

for i=1:length(p)
    as = num2str(p(i));
    prime_check = 0;
    for j=1:length(as)
        cp = circshift(as, [length(as), j]);
        if isprime(str2num(cp))
            prime_check = prime_check + 1;
        end      
    end
    
    if prime_check == length(as)
        v(i) = p(i);
    else
        v(i) = 1;
    end
    
end

np = length(v(v~=1));

end

