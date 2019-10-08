function rho = density_moistair(p,t,string,val)
if string == 'w'
    w = val;
else
w = humidity_ratio(p, t, string, val);
end
v = 0.287042*(t)*(1 + 1.607858*w)/p;
rho = 1/v;
end