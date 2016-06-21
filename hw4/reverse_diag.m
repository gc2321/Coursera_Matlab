function d = reverse_diag( n )
d = zeros(n);
indices = sub2ind(size(d), (1:1:n), n:-1:1);
d(indices) = 1;

end

