function mbd = spherical_mirror_abberr(fn,D)
format long;
delta_x = 0.01;
x = [0:delta_x: D/2];

d_func = @(i) cal_d(fn*D, i);
d = arrayfun(d_func, x);
mbd = ((8*delta_x)/(D^2))*sum(x.*d);


end

function d = cal_d(f, x)
theta = asin(x/(2*f));
d = 2*f*tan(2*theta)*((1/cos(theta))-1);
end
