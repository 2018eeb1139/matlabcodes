function fval=stiffSys(t,y)
    A=[-100 0;0 -0.01];
    fval=A*y;
end