a=[0.5; 1];
h=[1e-6; 1e-6];
trueval=[cos(a(1))*exp(-a(2)), -sin(a(1))*exp(a(2))];
x=a;
x(1)=a(1)+h(1);
f1=sin(x(1))*exp(-x(2));
x1=a(1)-h(1);
f2=sin(x(1))*exp(-x(2));
numdiff(1)=(f1-f2)/(2*h(1));
temp_h=[0; h(2)];
f1=myval(a+temp_h);
f2=myval(a-temp_h);
numdiff(2)=(f1-f2)/(2*h(2));
err=abs(trueval-numdiff)
disp(['Numerical Derivative:',num2str(numdiff)]);