function t_wbt = wetbulb(p,t,str,val)
    %this functions calculates the wetbulb temperature of the moistair
    % p -> Total Pressure in kPa
    % t-> dry bulb temperature in K
    % string -> "dpt" for dewpoint temperature in K
    %           "rh" for relative humidity between 0 and 1
    %           "w" for humidity ratio
    % val -> value of the string kg_vap/kg_dryair
w = humidity_ratio(p,t,str,val);
if strcmp(str,"dpt")
    dpt = val;
else
dpt = dewpoint(p,t,str,val);
end
%t_wbt = fminbnd(@(temp) sample(temp, [w, t, p]), dpt,t);
t_wbt = fzero(@(temp) sample(temp, [w, t, p]), (dpt+t)/2);
end

function err = sample(temp, con)
%err = abs(con(1) - humidity_ratio(con(3), con(2), 'wbt',temp));
err = con(1) - humidity_ratio(con(3), con(2), 'wbt',temp);
end
