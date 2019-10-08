function t_dpt = dewpoint(p,t,string,val)
%calcualtes the dew point of the air
if string == 'w'
    w = val;
else
w = humidity_ratio(p, t, string, val);
end
p_w = p/(0.621945/w +1);
t_dpt = fzero(@(temp) sample(temp,p_w),t-10);
end

function err = sample(t,p_w)
err = psat_water(t) - p_w;
end