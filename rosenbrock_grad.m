function grad=rosenbrock_grad(n,x)
    grad=zeros(n,1);
    for i=1:(n/2)
        e1=zeros(n,1);
        e1(2*i)=1;
        e1=10*e1;
        e2=zeros(n,1);
        e2(2*i-1)=1;
        e2=-20*x(2*i-1)*e2;
        df1=10*(x(2*i)-x(2*i-1)^2)*(e1+e2);
        grad=grad+(2/n)*df1;
        e1=zeros(n,1);
        e1(2*i-1)=-1;
        df2=(1-x(2*i-1))*e1;
        grad=grad+(2/n)*df2;
    end
    grad;
end
