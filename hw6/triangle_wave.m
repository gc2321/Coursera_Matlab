function v = triangle_wave( n )

format long;
t = linspace(0, 4*pi, 1001);
func = @(x) cal_k(n, x);
v = arrayfun(func, t);

end

function sum = cal_k (n, t)
    sum = 0;
    for k = 0:n
       ki = (sin((2*k+1)*t)*((-1)^k))/((2*k+1)^2);
       sum = sum + ki; 
    end;  
end

