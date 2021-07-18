function expval=multistep(a,h)
N=a/h;
expval=exp(0);
for i=1:N
    expval=expval*(1+h+0.5*h^2);
end