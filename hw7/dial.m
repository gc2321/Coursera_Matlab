function num = dial( x )

a{1} = '1';
a{2} = '2ABC';
a{3} = '3DEF';
a{4} = '4GHI';
a{5} = '5JKL';
a{6} = '6MNO';
a{7} = '7PQRS';
a{8} = '8TUV';
a{9} = '9WXYZ';

input = x;

for i=1:length(input)
    insert = Inf;
    if input(i)=='0'
        insert = 0;
    end;
    for j=1:9
        if strfind(a{j}, input(i))
            insert = j;
            break;            
        end
    end
    
    if insert == Inf
        num = 0;
        num = uint64(num);
        return;
    end;
    v(i) = insert;
    
str = num2str(v);
str(ismember(str, ' ')) = [];
num = uint64(str2num(str));

end






end

