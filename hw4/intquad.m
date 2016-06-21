function q = intquad( n, m )
z = zeros(n,m);
one = ones(n,m);
two = 2*ones(n,m);
three = 3*ones(n,m);
q = [z one; two, three];

end

