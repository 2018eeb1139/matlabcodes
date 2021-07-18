a=1;
trueval=1/(1+a^2);

for i=1:2:14
    h=10^(-i);
    approxval=(atan(a+h)-atan(a))/h;
    err=abs(trueval-approxval)
    
    hall((i+1)/2)=h;
    errall((i+1)/2)=err;
end
loglog(hall,errall);