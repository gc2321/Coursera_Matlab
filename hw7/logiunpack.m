function m = logiunpack( cell )

[row col] = size(cell);

m = zeros(col, col);

for ii=1:col
    if cell{ii}~=0
        m(ii, cell{ii})=1;
    end
end

m = logical(m);

end

