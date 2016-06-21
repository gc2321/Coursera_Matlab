function [ E, N ] = cyclotron( v )

m = 3.344 * (10^(-27));
q = 1.603 * (10^(-19));
b = 1.600;
r1 = sqrt((m*v)/(q*(b^2)));
si = (r1)/2;

%current distance from center
fc = r1+si;

r_current = r1;
N = 1;

while r_current
    N = N+1;
    r_past = r_current;
    r_current = sqrt(((r_current)^2) + (2*(m*v)/(q*(b^2))));
    
    fc = (r_current*2)-fc; 
   
    if mod(N, 2)==0 && fc > 0.500 
        break;
    end
      
end

E = v*N*(10^-6);

end

