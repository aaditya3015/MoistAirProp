function var = sample_min(var1,var2)
a = var1+var2;
b = var1*var2;

options = optimset('TolFun',1e-2,'TolX', 1e-2,'MaxIter',35);
[guess,FVAL,EXITFLAG,OUTPUT] = fminsearch(@parabola,[3,4], options);
var = guess(2);
end

function z = parabola(a)
z = (a(1)^2)/10 + (a(2)^2)/15;
end