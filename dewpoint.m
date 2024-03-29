function t_dpt = dewpoint(p,t,str,val)
    %this function evaluates the dewpoint temperature of the most air
    % p -> Total Pressure in kPa
    % t-> dry bulb temperature in K
    % string -> "wbt"for wetbulb temperature in K
    %           "rh" for relative humidity between 0 and 1
    %           "w" for humidity ratio
    % val -> value of the string kg_vap/kg_dryair
if strcmp(str,"w")
    w = val;
else
w = humidity_ratio(p, t, str, val);
end
p_w = p/(0.621945/w +1);
t_dpt = fzero(@(temp) (psat_water(temp) - p_w),[t-100,t]);
end
