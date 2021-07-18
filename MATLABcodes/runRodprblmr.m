N=100;
T0(1,1)=100;
T0(2:N,1)=25;
T0(N+1,1)=25;
tSpan=[0 20];
Y0=T0(2:N);
%%solve using ode 45
[tSol,YSol]=ode45(@rodconduct,tSpan,Y0);
%%PLot reslut
plot(tSol,YSol(:,N/2));