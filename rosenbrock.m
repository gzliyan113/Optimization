function [fvalue, grad]=rosenbrock(n,x)
    fvalue=0;
    grad=zeros(n,1);
   
    for i=1:(n/2)
        fvalue=fvalue+[10*(x(2*i)-x(2*i-1)^2)]^2+[1-x(2*i-1)]^2;
        grad(2*i)=10*(x(2*i)-x(2*i-1)^2)*10;
        grad(2*i-1)=10*(x(2*i)-x(2*i-1)^2)*(-20*x(2*i-1))-(1-x(2*i-1));
    end
    grad=2*grad;
end