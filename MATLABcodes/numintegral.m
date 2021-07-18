%trapezoidal integration
%h=(b-a)
%h/2*(f(a)+f(a+h))

a=1;
b=2;
trueval=(b-b^2/2+b*log(b))-(a-a^2/2+a*log(a));
n=200;
h=(b-a)/n;
xVec=a:h:b;
fvec=myfun(xVec);
Iinterval=zeros(n,1);
for i=1:n
    Iinterval(i)=h/2*(fvec(i)+fvec(i+1));
end
I_trap1=sum(Iinterval);
err1=abs(trueval-I_trap1);
%direct formula
%I=h/2*(f(1)+2*(f(2)+f(3)+...+f(n))+f(n+1))
I_trap2=h/2*(fvec(1)+2*sum(fvec(2:n))+fvec(n+1));
err2=abs(trueval-Itrap2);
I_trap3=trapz(xVec,fvec);
err3=abs(trueval-I_trap3);
disp(I_trap1);
disp(I_trap2);
disp(['For h= ',num2str(h), ', Error= ',num2str(err1)]);
disp(['For h= ',num2str(h), ', Error= ',num2str(err2)]);_
disp(I_trap3);
disp(err3);
%T_trap=h/2*(myfun(a)+myfun(b));
%err_trap=abs(trueval-T_trap)
%simpson's 1/3rd rule
%h=(b-a)/2
%h/3*(f(a)+4*f(a+h)+f(a+2*h))
%h=(b-a)/2;
%T_simp=h/3*(myfun(a)+4*myfun(a+h)+myfun(a+2*h));

%err_simp=abs(trueval-T_simp)