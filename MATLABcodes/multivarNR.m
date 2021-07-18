X0=[-1;-1;0];
maxIter=50;
tolX=1e-6;
X=X0;
Xold=X0;
for i=1:maxIter
    [f,j]=lorenzSysNR(X);
    X=X-inv(j)*f;
    err(:,i)=abs(X-Xold);
    Xold=X;
    if(err(:,i)<tolX)
        break;
    end
end