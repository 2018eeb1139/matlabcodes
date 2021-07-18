x=0.5;
for i=1:10;
    xnew=0.5*(x+2/x);
    err=abs(x-xnew)
    x=xnew;
end