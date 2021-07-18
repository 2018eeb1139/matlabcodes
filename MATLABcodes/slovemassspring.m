%% initial condition
y0=[1;0];
t=[0 10];
%% slove use ode 45
[tSol,YSol]=ode15s(@massspringfun,t,y0);

%%plot result
plot(tSol,YSol(:,1));
hold on
plot(tSol,YSol(:,2));