function s = halfsum( x )

[row, col] = size(x);

if col==1;
    s = x(end,1);
    return;
elseif row==1
    s = sum(x(:));
    return;
end;

col_end = 1;
for i = row-1:-1:1
   for j = 1:col
      if j <= col_end
        x(i,j) = 0;
      end;
   end;
   col_end = col_end+1; 
  
end;    

s = sum(x(:));

end

