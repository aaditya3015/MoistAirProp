function rho = density_moistair(p,t,string,val)
    %this function evaluates the dewpoint temperature of the most air
    % p -> Total Pressure in kPa
    % t-> dry bulb temperature in K
    % string -> "dpt" for dewpoint temperature in K
    %           "wbt"for wetbulb temperature in K
    %           "rh" for relative humidity between 0 and 1
    %           "w" for humidity ratio
    % val -> value of the string kg_vap/kg_dryair
if string == 'w'
    w = val;
else
w = humidity_ratio(p, t, string, val);
end
v = 0.287042*(t)*(1 + 1.607858*w)/p;
rho = 1/v;
end
s
