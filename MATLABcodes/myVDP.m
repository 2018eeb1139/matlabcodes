function dYdt=myVDP(t,Y)
    mu=100;x=Y(1);v=Y(2);
    dxdt=v;
    dvdt=mu*(1-x^2)*v-x;
    dYdt=[dxdt;dvdt];
end