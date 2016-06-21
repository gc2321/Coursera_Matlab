function p = poly_val( c0, c, x )

if isscalar(c)
    p = c0+c*x;
elseif isempty(c)
    p = c0;
else
    c_row = c(:)';
    power = [1:1:length(c_row)];
    p = c0+ sum(c_row.*(x.^power));    

end

