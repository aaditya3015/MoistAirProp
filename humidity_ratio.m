function w = humidity_ratio(p, t, str, val)
    %this functions calculates the humidity ratio of the moistair
    % p -> Total Pressure in kPa
    % t-> dry bulb temperature in K
    % string -> "dpt" for dewpoint temperature in K
    %           "wbt"for wetbulb temperature in K
    %           "rh" for relative humidity between 0 and 1
    %           "w" for humidity ratio
    % val -> value of the string kg_vap/kg_dryair
t0 = 273.15;
if str == 'rh'
    rh = val;
    p_ws = psat_water(t);
    w = 0.621945*rh*(p_ws)/(p-rh*p_ws);
elseif str == 'wbt'
    wbt = val;
    p_ws_wbt = psat_water(wbt);
    ws_wbt = 0.621945*(p_ws_wbt)/(p-p_ws_wbt);
    if t >= t0
        w = ((2501-2.326*(wbt-t0))*ws_wbt - 1.006*((t-t0) - (wbt-t0)))/(2501 + 1.86*(t-t0) - 4.186*(wbt-t0));
    elseif t < t0
        w = ((2830-0.24*(wbt-t0))*ws_wbt - 1.006*((t-t0) - (wbt-t0)))/(2830 + 1.86*(t-t0) - 2.1*(wbt-t0));
    end
elseif str == 'dpt'
    dpt = val;
    p_ws = psat_water(dpt);
    w = 0.621945*(p_ws)/(p-p_ws);
elseif str == 'w'
    w = val;
else
    msg = 'use "rh" for relative humidity,"wbt" for wet bulb temp,"dpt" for dew point temp';
    error(msg);
end
end
