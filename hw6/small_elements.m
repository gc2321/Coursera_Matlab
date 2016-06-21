function indexes = small_elements( a )

[row col]= size(a);


for i=1:row
    for j=1:col
        if a(i,j)>=i*j
            a(i,j) = Inf;
        end;
    end;
end;


[r c]= find(a~=Inf);
r1 = r(:);
c1 = c(:);
indexes = [r1,c1];


end

