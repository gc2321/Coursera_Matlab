function p = peri_sum( A )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
p = sum(A(1, :));
p = p+sum(A(end, :));
p = p+sum(A(2:end-1, 1));
p = p+sum(A(2:end-1, end));
end

