function dYdt=SIRmodel(t,Y)
    r=0.00218;a=0.5;
    S=Y(1);I=Y(2);R=Y(3);
    dSdt=-r*S*I;
    dIdt=r*S*I-a*I;
    dRdt=a*I;
    dYdt=[dSdt dIdt dRdt]';
end