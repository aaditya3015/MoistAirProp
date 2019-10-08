function h = enthalpy_moistair(p, t, str, val)
    %This function returns the enthalpy of the moistair in kJ/kg
    % p -> Total Pressure in kPa
    % t-> dry bulb temperature in K
    % string -> "dpt" for dewpoint temperature in K
    %           "wbt"for wetbulb temperature in K
    %           "rh" for relative humidity between 0 and 1
    %           "w" for humidity ratio
    % val -> value of the string kg_vap/kg_dryair
if strcmp(str,"w")
    w = val;
    h = 1.006*(t-273.15)+ w*(2501+1.86*(t-273.15));
else
w = humidity_ratio(p, t, str, val);
h = 1.006*(t-273.15)+ w*(2501+1.86*(t-273.15));
end
end
