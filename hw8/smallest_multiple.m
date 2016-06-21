function a = smallest_multiple( n )

p = primes(n);

a = uint64(1);

for i=1:length(p)
    power = 1;
    while (p(i)^power <= n )
        power = power + 1;        
    end
    a = a*(p(i)^(power-1));
end


% return 0 if result is greater than unit64(number) 
if a == (a+1)
    a = uint64(0);
    return
end    

end

