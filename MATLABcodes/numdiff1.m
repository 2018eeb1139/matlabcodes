a=1;
trueval=1/(1+a^2);
h=10.^[-1:-1:-10];

fwddiff=(atan(a+h)-atan(a))./h;
errfwd=abs(trueval-fwddiff);

currdiff=(atan(a+h)-atan(a-h))./(2*h);
errcurr=abs(trueval-currdiff);

bkddiff=(atan(a)-atan(a-h))./h;
errbkd=abs(trueval-bkddiff);

loglog(h,errfwd,'-b',h,errcurr,'--r',h,errbkd,'.m');