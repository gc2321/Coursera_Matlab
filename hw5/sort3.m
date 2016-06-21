function [ a b c ] = sort3( x )
y = x(:)';
final =[];
if (y(1) <= y(2)) && (y(1) <= y(3))
    final(1) = y(1);
    if (y(2) <= y(3))
        final(2) = y(2);
        final(3) = y(3);
    else
        final(2) = y(3);
        final(3) = y(2);
    end
elseif (y(2) <= y(1)) && (y(2) <= y(3))
    final(1) = y(2);
    if (y(1) <= y(3))
        final(2) = y(1);
        final(3) = y(3);
    else
        final(2) = y(3);
        final(3) = y(1);
    end
else
    final(1) = y(3);
    if (y(1) <= y(2))
        final(2) = y(1);
        final(3) = y(2);
    else
        final(2) = y(2);
        final(3) = y(1);
    end
end
a = final(1);
b = final(2);
c = final(3);

end

