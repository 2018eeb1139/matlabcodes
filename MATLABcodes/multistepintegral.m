a=1;
b=2;
n=200;
h=(b-a)/n;
xVec=a:h:b;
fVec=myfun(xVec);
I=trapz(xVec,fVec)
%help trapz build in function
%help quad build in function