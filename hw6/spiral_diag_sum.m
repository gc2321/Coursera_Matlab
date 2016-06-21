function s = spiral_diag_sum( n )

if n==1
    s = 1;
    return;
end;

base = [3:2:n];
a = base.^2;
b = a-base+1;
c = b-base+1;
d = c-base+1;

s = 1+sum(a)+sum(b)+sum(c)+sum(d);

end




