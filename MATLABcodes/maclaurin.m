n=5;
a=0.1;
vec=[1:n];
terms=a.^vec./cumprod(vec);
expval=1+cumsum(terms);
trueval=exp(0.1);
err=abs(trueval-expval);