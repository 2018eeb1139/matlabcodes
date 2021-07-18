function dYdt=massspringfun(t,Y)
    x=Y(1);
    v=Y(2);
    c=5;k=15;m=10;
    dxdt=v;
    dvdt=-(c*v+k*x)/m;
    dYdt=[dxdt;dvdt];
end