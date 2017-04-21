function grad=rosenbrock_grad1(n,x)
    grad=zeros(n,1);
    for i=1:(n/2)
        grad(2*i)=10*(x(2*i)-x(2*i-1)^2)*10;
        grad(2*i-1)=10*(x(2*i)-x(2*i-1)^2)*(-20*x(2*i-1))-(1-x(2*i-1));
    end;
    grad=2*grad;