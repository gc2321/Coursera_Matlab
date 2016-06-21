function T = pendulum( L, a0 )

format long;

g = 9.8;
delta_t = 10^-6;
theta = a0;
w = 0;
t = 0;

if a0==0 || L ==0;
    T = 0;
    return;
end;

while theta >= 0
    a = (-1*g*sin(theta))/L;
    w = w + a*delta_t;
    t = t + delta_t;
    theta = theta + (w*delta_t);
end;

T = t*4;

end

