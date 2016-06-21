function x = find_zero( f, x1, x2 )

m = find_middle(x1,x2);

p1 = x1;
p2 = x2;
y = abs(f(m));

while y > 1e-10
    
    if (f(m) > 0 && f(p1) > 0) || (f(m) < 0 && f(p1) <0)
        p1 = p2;
        p2 = m;       
    else 
        p2 = p1;
        p1 = m;    
    end
    
    m = find_middle(p1,p2);
    
    y = abs(f(m));
end    

x = m;

end

function m = find_middle(x1, x2)
 m = (x1+x2)/2;
end



