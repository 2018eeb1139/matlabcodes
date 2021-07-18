a=0.1;
trueval=exp(a);
for i=1:3
    h=10^(-i)
    expval=multistep(a,h);
    err=abs(trueval-expval);
    hall(i)=h;
    errall(i)=err;
end
loglog(hall,errall,'-bo');