function B = integerize( A )

if max(max(A)) <= (2^7)-1 && min(min(A))>= (-2)^7
    B = 'int8';
elseif max(max(A)) <= (2^15)-1 && min(min(A))>= (-2)^15
    B = 'int16';
elseif max(max(A)) <= (2^31)-1 && min(min(A))>= (-2)^31
    B = 'int32';
elseif max(max(A)) <= (2^63)-1 && min(min(A))>= (-2)^63    
    B = 'int64';
else
    B = 'NONE';
end

end

