k=1000;
EbyR=2500;
C=1.0;
T=600;

r=k*exp(-EbyR/T)*C^1.25;
trueval=r*(EbyR/T^2);
h=[1e-3 1e-4 1e-5 1e-6 1e-7]*T;
r1=k*exp(-EbyR./(T+h))*C^1.25;
r2=k*exp(-EbyR./(T-h))*C^1.25;

numval=(r1-r2)./(2*h); 

err=abs(trueval-numval)