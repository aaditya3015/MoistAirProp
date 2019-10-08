function t_wbt = wetbulb(p,t,string,val)
w = humidity_ratio(p,t,string,val);
if string == "dpt"
    dpt = val;
else
dpt = dewpoint(p,t,string,val);
end
%t_wbt = fminbnd(@(temp) sample(temp, [w, t, p]), dpt,t);
t_wbt = fzero(@(temp) sample(temp, [w, t, p]), (dpt+t)/2);
end

function err = sample(temp, con)
%err = abs(con(1) - humidity_ratio(con(3), con(2), 'wbt',temp));
err = con(1) - humidity_ratio(con(3), con(2), 'wbt',temp);
end