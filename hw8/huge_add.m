function a = huge_add(x, y)

if ischar(x)==0 || ischar(y)==0
    a = -1;
    return;
elseif length(str2num(x))~=1 || length(str2num(y))~=1
    a = -1;
    return;
elseif str2num(x) ~= fix(str2num(x)) || str2num(y) ~= fix(str2num(y)) 
    a = -1;
    return;
elseif isscalar(str2num(x))==0 || isscalar(str2num(y))==0 || str2num(x) < 0 || str2num(y) < 0 
    a = -1;
    return;    
end   

x = fliplr(x);
y = fliplr(y);

if length(x) > length(y)
    le = length(y);
    bigger = x;
    smaller = y;
else
    le = length(x);
    bigger = y;
    smaller = x;
end

a = bigger;
carry_over = 0;

for i=1:le  
    s = str2num(x(i))+str2num(y(i)) + carry_over;
    if s >= 10
        s = s - 10;
        carry_over = 1;
    else
        carry_over = 0;
    end 
    a(i) = num2str(s);
end

% unequal length
if length(x)~=length(y)
    k = str2num(a(le+1))+ carry_over;
    if k >= 10
        k = k - 10;
        a(le+1) = num2str(k);
        m = str2num(a(le+2))+ 1;
        a(le+2) = num2str(m);   
    else
        a(le+1) = num2str(k);
    end    
    
else
    if carry_over == 1
        a = strcat(a, num2str(carry_over));
    end
end    

a = fliplr(a);


end

