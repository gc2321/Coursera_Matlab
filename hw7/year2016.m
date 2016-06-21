function m = year2016( a )

if isscalar(a) == 0 || ~ismember(a, [1:1:12])
    m = [];
    return;
end

month_name = {'January','February','March','April','May','June','July','August','September','October','November','December'};
day_week_name = {'Sun','Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'};

date = datetime(2016,01,01);

for i=1: month_day(a)
    m(i).month = char(month_name(a));
    m(i).date = i;
    
    d = datetime(2016, a, i);
    
    m(i).day = char(day_week_name(day(d, 'dayofweek')));
    
end    
    
end

function day = month_day(month)

if ismember(month, [1 3 5 7 8 10 12])
    day = 31;
    return;
elseif ismember(month, [4 6 9 11])
    day = 30;
    return;
elseif month==2 
    day = 29;
    return;
else
    day = 0;
    return;
end
end

function a = day_month_end(day, month)

if ismember(month, [1 3 5 7 8 10 12])
    a = 31 - day;
    return;
elseif ismember(month, [4 6 9 11])
    a = 30 - day;
    return;
elseif month==2
    a = 28 - day;
    return;
end;
end


