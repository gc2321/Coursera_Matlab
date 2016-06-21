function a = day_diff( month1, day1, month2, day2 )

if sum([isscalar(month1) isscalar(day1) isscalar(month2) isscalar(day2)])~=4
    a = -1;
    return;
elseif month1 ~= fix(month1) || day1 ~= fix(day1) || month2 ~= fix(month2) || day2 ~= fix(day2)
    a = -1;
    return;
end;

if checkdate(month1, day1) ~= 1 || checkdate(month2, day2) ~= 1
    a = -1;
    return;
end;

a = 0;

% calculate number of day in a month
cal_day = @(x) day_month_end(1, x)+1;

if month1 == month2
    a = abs(day1-day2);
    return;
elseif month2 > month1
    a = day_month_end(day1, month1);
    month_array = [month1+1 :1: month2-1];
    day_array = arrayfun(cal_day, month_array)
    a = a + sum(day_array);
    a = a + day2;
    return;
elseif month1 > month2
    a = day_month_end(day2, month2);
    month_array = [month2+1 :1: month1-1]; 
    day_array = arrayfun(cal_day, month_array);
    a = a + sum(day_array);
    a = a + day1;
    return;
end

end

function a = checkdate(month, day)

if ismember(month, [1 3 5 7 8 10 12]) && ismember(day, [1:1:31])
    a = 1;
    return;
elseif ismember(month, [4 6 9 11]) && ismember(day, [1:1:30])
    a = 1;
    return;
elseif month==2 && ismember(day, [1:1:28]) 
    a = 1;
    return;
else
    a = 0;
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




