function m = maxproduct(A, n )

[row,col] = size(A);

h_prod = -inf*ones(row, col);
v_prod = -inf*ones(row, col);
d_prod = -inf*ones(row, col);
rd_prod = -inf*ones(row, col);

for i=1:row
   for j=1:col
     
     if check(A, i, j+n-1)
        [hr, hc] = horz(i, j, n, col);
        h_prod(i,j) = get_product(A, hr, hc);
        
     end
     
     if check(A, i+n-1, j)
        [vr, vc] = vert(i, j, n, row);
        v_prod(i,j) = get_product(A, vr, vc);
     end
     
     if check(A, i+n-1, j+n-1)
        [dr,dc] = f_diag(i, j, n, row, col);
        d_prod(i,j) = get_product(A, dr, dc);
     end
     
     if check(A, i+n-1, j-n+1)
        [rdr,rdc] = r_diag(i, j, n, row, col);
        rd_prod(i,j) = get_product(A, rdr, rdc);
     end
     
   end    
end

prod = [max(h_prod(:)) max(v_prod(:)) max(d_prod(:)) max(rd_prod(:))];

if max(prod) == -Inf
    m = [];
    return;
end    

m = [];

if max(prod)== prod(1)
    % horizontal
    [a,b] = find(h_prod == max(prod));
    
    m = [a b];
    for i=1:n-1
        m = vertcat(m, [a b+i]);
    end    
    
elseif max(prod)== prod(2)
    % vertical
    [a,b] = find(v_prod == max(prod));
    m = [a b];
    for i=1:n-1
        m = vertcat(m, [a+i b]);
    end    
    
elseif max(prod)== prod(3)   
    % diagonal
    [a,b] = find(d_prod == max(prod));
    m = [a b];
    for i=1:n-1
        m = vertcat(m, [a+i b+i]);
    end    
    
elseif max(prod)== prod(4)
    % reverse-diagonal
    [a,b] = find(rd_prod == max(prod));
    m = [a b];
    for i=1:n-1
        m = vertcat(m, [a+i b-i]);
    end    

else
    m = [];
    return;
    
end

end

function in = check(A, r, c)   
    % check if row and col is valid in A
    [row, col] = size(A);
    if r > 0 &&  c > 0 && r <= row && c <= col
        in = 1;
    else
        in = 0;
    end    
    
end

function in = list(current, n, limit)

in = [current:1:n+current-1];
in = in(in>0);
in = in(in<=limit);

end

function [r,c] = horz(cr, cc, n, limit)  
    c = list(cc, n, limit);
    r = repelem(cr, length(c));   
end

function [r,c] = vert(cr, cc, n, limit)  
    r = list(cr, n, limit);
    c = repelem(cc, length(r));   
end

function [r,c] = f_diag(cr, cc, n, row_limit, col_limit)  
    tr = [cr:1:n+cr-1];
    tc = [cc:1:n+cc-1];
  
    r =[];
    c =[];
    
    for i=1:length(tr)
        if tr(i) >0 && tc(i) >0 && tr(i)<=row_limit && tc(i)<=col_limit  
            r = [r tr(i)];
            c = [c tc(i)];
        end    
    end
    
end

function [r,c] = r_diag(cr, cc, n, row_limit, col_limit)  
    
    tr = [cr:1:n+cr-1];
    tc = [cc:-1:(n*-1)+cc+1];
	   
    r =[];
    c =[];
    
    for i=1:length(tr)
        if tr(i) >0 && tc(i) >0 && tr(i)<=row_limit && tc(i)<=col_limit  
            r = [r tr(i)];
            c = [c tc(i)];
        end    
    end 
end

 function p = get_product(A, r, c)
    p = 1;
    for j = 1:length(r)
       p = p*A(r(j),c(j));       
    end    
 end
