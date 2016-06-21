function a = exp_average( x, b )

persistent out_last;
persistent reset;
persistent pb;

if nargin==2
    pb = b;
    if reset == 2 % function has been called
        a = (pb*x) + ((1-pb)*out_last);       
    else
        a = x;
        reset = 2;
    end;          
elseif nargin==1
    
    if (reset == 1)  % function has been called
        a = (pb*x) + ((1-pb)*out_last); 
    elseif(reset == 2)  % function has been called
        a = (pb*x) + ((1-pb)*out_last);  
        reset = 1;
    else
        pb = 0.1;
        a = x;
        reset = 1;
    end;        
end;

out_last = a;


end

