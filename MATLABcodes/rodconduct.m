function dYdt=rodconduct(t,Y)
    Ta=25;alpha=0.025;beta=0.1;
    N=length(Y)+1;T(1)=100;
    T(2:N)=Y;T(N+1)=Ta;h=1/N;
    dTdt=zeros(N+1,1);
    for i=2:N
       dTdt(i)=alpha/h^2*(2*T(i-1)-2*T(i)+T(i-1))-beta*(T(i)-Ta);
    end
    dYdt=dTdt(2:N);
end