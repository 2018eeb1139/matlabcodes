function [fval,jac]=lorenzSysNR(X)
    x=X(1);
    y=X(2);
    z=X(3);
    fval(1,1)=x-y;
    fval(2,1)=2*x-x*z-y;
    fval(3,1)=x*y-3*z;
    jac=[1,-1,0;2-z,-1,x;y,x,-3];
end