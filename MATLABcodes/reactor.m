function dCdt=reactor(t,C)
    dCdt=2*t-1/2*t.^2;
end
function dTdt=pieODEfun(t,T)
    c=-0.028;
    dTdt=c*(T-23);
end
