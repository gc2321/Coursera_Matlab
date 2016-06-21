function s = sum3and5muls( n )
three = [3:3:n];
five = [5:5:n];
s = sum(unique(horzcat(three, five)));
end

