function p = zero_stat( A )

p = (sum(A(:) == 0)/numel(A))*100;

end

