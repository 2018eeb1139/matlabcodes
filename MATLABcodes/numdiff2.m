a=1;
h=1e-4;
trueval1=-1+(1/a);
trueval2=(-1/a*a);
x=a+h;
f1=2-x+log(x);
x=a;
f2=2-x+log(x);
x=a-h;
f3=2-x+log(x);

numval1=(f1-f3)/(2*h);
numval2=(f1-2*f2+f3)/(h^2);

err1= abs(trueval1-numval1);
err2= abs(trueval2-numval2);