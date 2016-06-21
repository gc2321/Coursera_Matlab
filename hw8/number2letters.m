function c = number2letters( num )

ten = {'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'};

c = 0;

if num == 0
    c = length('zero');
elseif num < 100 && mod(num, 10)==0
    c = length(char(ten(num/10))); 
else
    c = letters(num);

end

function c = letters(num)

single = {'one','two','three','four','five','six','seven','eight','nine'};
teen = {'eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen'};
ten = {'ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety'};

if num == 0
    c = 0;
elseif num <100 && mod(num, 10)==0
    c = length(ten(num/10));
elseif num > 0 && num < 10
    c = length(char(single(num))); 
elseif num < 20
    c = length(char(teen(num-10))); 
elseif num < 100
    c = length(char(ten(floor(num/10))));
    c = c + letters(num - 10*floor(num/10));
else    
    c = length(char(single(floor(num/100)))) + length('hundred');
    c = c + letters(num - 100*floor(num/100));


end