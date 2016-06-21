function cent = centuries( y )

cent ='';
if ~isscalar(y) || y ~=fix(y)
    cent = '';
    return;
end    
if y <=100 && y >=1
    cent = 'I';
    return;
end;

year = ceil(y/100);
ten = repmat('X', 1, floor(year/10));

a{1} = 'I';
a{2} = 'II';
a{3} = 'III';
a{4} = 'IV';
a{5} = 'V';
a{6} = 'VI';
a{7} = 'VII';
a{8} = 'VIII';
a{9} = 'IX';

one = '';

if mod(year, 10) ~=0
    one = a{mod(year, 10)};
end;


if y > 1 && y <= 3000
    cent = strcat(ten, one);
end;


end

