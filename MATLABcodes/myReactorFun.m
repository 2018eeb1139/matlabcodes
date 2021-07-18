function fval=myReactorFun(X)
F=10;
k=5;
fval=(F/k)./(1-X).^1.25;
end
% help I=quad(@(x) myFun(x),lowerlimit,upperlimit);