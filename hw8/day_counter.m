function n = day_counter( year )

n = 0;

if isscalar(year) == 0 
    return;
end

for i=1:12
    d = datetime(year, i, 1);
    if day(d, 'dayofweek')==2
        n = n+1;
    end
end

    
end

