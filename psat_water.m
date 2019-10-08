function psat = psat_water(T)
    % this function calculates the sturation vapour pressure of the water
    % See ashrae handbook - fundamentals - chapter1 for reference
C1 = -5.6745359E+03;
C2 = 6.3925247;
C3 = -9.6778430E-03;
C4 = 6.2215701E-07;
C5 = 2.0747825E-09;
C6 = -9.4840240E-13;
C7 = 4.1635019;
C8 = -5.8002206E+03;
C9 = 1.3914993;
C10 = -4.8640239E-02;
C11 = 4.1764768E-05;
C12 = -1.4452093E-08;
C13 = 6.5459673;
if (T > -373.15 && T < 273.15)
    p_ws = exp(C1/T + C2 + C3*T + C4*T^2 + C5*T^3 + C6*T^4 + C7*log(T));
elseif (T >= 273.15 && T < 473.15)
    p_ws = exp(C8/T + C9 + C10*T + C11*T^2 + C12*T^3 + C13*log(T));
else
    msg = 'Temperature should be between -100 and 200 degC';
    error(msg);
end
psat = p_ws/1000;
end
