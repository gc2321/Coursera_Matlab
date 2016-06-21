function n = digit_counter( file )

n = 0;

fid = fopen(file, 'rt');

if fid < 0
    n = -1;
    return;
end

oneline = fgets(fid);
n = n + read_line(oneline);

while ischar(oneline)
    oneline = fgets(fid);
    n = n + read_line(oneline);    
end

fclose(fid);

end

function n = read_line(line)   
    n =0;  
    for i=1:length(line)
        if ismember(line(i), ['0','1','2','3','4','5','6','7','8','9']);
            n = n+1;
        end    
    end       
end
