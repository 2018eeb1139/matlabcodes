vNet=35;
theta=pi/4;
x0=0;y0=0;
u0=vNet*cos(theta);
v0=vNet*sin(theta);

Y0=[x0 y0 u0 v0];
tRange=[0 5.2];

[tSol,YSol]=ode45(@cricketFun,tRange,Y0);

plot(tSol,YSol(:,1:2));