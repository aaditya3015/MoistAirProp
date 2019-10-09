%example file to check the developed functions
p = 100;
t = 273.15+35;
rh = 0.8;
wbt = 273.15+31.8062;
dpt = 273.15+31.0246;
v = 0.92619;
perdev = 0.5;
w = 0.029323;
enthal = 110.477;

wcalc = humidity_ratio(p,t,"rh",rh);
dev = abs(w-wcalc)/w *100;
if dev < perdev
  disp("humidity_ratio with rh input : passed")
else
  disp("humidity_ratio with rh input : failed")
end

wcalc = humidity_ratio(p,t,"wbt",wbt);
dev = abs(w-wcalc)/w *100;
if dev < perdev
  disp("humidity_ratio with wbt input : passed")
else
  disp("humidity_ratio with wbt input : failed")
end

wcalc = humidity_ratio(p,t,"dpt",dpt);
dev = abs(w-wcalc)/w *100;
if dev < perdev
  disp("humidity_ratio with dpt input : passed\n")
else
  disp("humidity_ratio with dpt input : failed\n")
end

hcalc = enthalpy_moistair(p,t,"rh",rh);
dev = abs(enthal-hcalc)/enthal *100;
if dev < perdev
  disp("enthalpy_moistair with rh input : passed")
else
  disp("enthalpy_moistair with rh input : failed")
end

hcalc = enthalpy_moistair(p,t,"wbt",wbt);
dev = abs(enthal-hcalc)/enthal *100;
if dev < perdev
  disp("enthalpy_moistair with wbt input : passed")
else
  disp("enthalpy_moistair with wbt input : failed")
end

hcalc = enthalpy_moistair(p,t,"dpt",dpt);
dev = abs(enthal-hcalc)/enthal *100;
if dev < perdev
  disp("enthalpy_moistair with dpt input : passed")
else
  disp("enthalpy_moistair with dpt input : failed")
end

hcalc = enthalpy_moistair(p,t,"w",w);
dev = abs(enthal-hcalc)/enthal *100;
if dev < perdev
  disp("enthalpy_moistair with w input : passed\n")
else
  disp("enthalpy_moistair with w input : failed\n")
end

dptcalc = dewpoint(p,t,"rh",rh);
dev = abs(dpt-dptcalc)/dpt *100;
if dev < perdev
  disp("dewpoint with rh input : passed")
else
  disp("dewpoint with rh input : failed")
end

dptcalc = dewpoint(p,t,"wbt",wbt);
dev = abs(dpt-dptcalc)/dpt *100;
if dev < perdev
  disp("dewpoint with wbt input : passed")
else
  disp("dewpoint with wbt input : failed")
end

dptcalc = dewpoint(p,t,"w",w);
dev = abs(dpt-dptcalc)/dpt *100;
if dev < perdev
  disp("dewpoint with w input : passed\n")
else
  disp("dewpoint with w input : failed\n")
end

wbtcalc = wetbulb(p,t,"rh",rh);
dev = abs(wbt-wbtcalc)/wbt *100;
if dev < perdev
  disp("wetbulb with rh input : passed")
else
  disp("wetbulb with rh input : failed")
end

wbtcalc = wetbulb(p,t,"dpt",dpt);
dev = abs(wbt-wbtcalc)/wbt *100;
if dev < perdev
  disp("wetbulb with dpt input : passed")
else
  disp("wetbulb with dpt input : failed")
end

wbtcalc = wetbulb(p,t,"w",w);
dev = abs(wbt-wbtcalc)/wbt *100;
if dev < perdev
  disp("wetbulb with w input : passed\n")
else
  disp("wetbulb with w input : failed\n")
end
