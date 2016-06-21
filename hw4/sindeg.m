function [A, avg] = sindeg( deg )
A = sin(deg2rad(deg));
avg = mean2(A);
end