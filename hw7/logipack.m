function c = logipack( m )

[row col] = size(m);

c = cell(1,row);

for i=1:row
    v = find(m(i,:)==1);
    if isempty(v)
        c{i} = [];
    else
        c{i} = v;
    end
    
end


end

