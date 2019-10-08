function h = enthalpy_moistair(p, t, string, val)
%This function returns the enthalpy of the moist it by taking as inputs
% p = total pressure of the air in kPa
% t = Dry Bulb Temperatue in K
% rh = Relative Humidity < 1 1 = 100% relative humidity
% h = Enthanlpy (kJ/kg)

if string == 'w'
    w = val;
    h = 1.006*(t-273.15)+ w*(2501+1.86*(t-273.15));
else
w = humidity_ratio(p, t, string, val);
h = 1.006*(t-273.15)+ w*(2501+1.86*(t-273.15));
end
end