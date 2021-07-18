A=[1 1 1;2 1 3;3 4 -2];
b=[4;7;9];
Ab=[A,b];
n-length(A;
alpha=Ab(2,1)/Ab(1,1);
Ab(2,:)=Ab(2,:)-alpha*Ab(1,:);
alpha=Ab(3,1)/A(1 ,1);
Ab(3,:)=Ab(3,:)-alpha*Ab(1,:);
alpha=Ab(3,2)/Ab(2,2);
Ab(3,:)=Ab(3,:)-alpha*Ab(2,:);
U=Ab(1:n,1:n);
% x(3)=Ab(3,end)/Ab(3,3);
% x(2)=(Ab(2,end)/Ab(2,2))-((Ab(2,3)*x(3))/Ab(2,2))
% x(1)=(Ab(1,end)/A(1,1))-(Ab(1,3)*x(3)+Ab(1,2)*x(2))/A(1,1)); 