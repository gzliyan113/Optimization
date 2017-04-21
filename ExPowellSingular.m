function [val grad]=ExPowellSingular(n,x)
    val=0;
    grad=zeros(n,1);
    for i=1:n/4
        val=(x(4*i-3)+10*x(4*i-2))^2+5*(x(4*i-1)-x(4*i))^2+(x(4*i-2)-2*x(4*i-1))^4+10*(x(4*i-3)-x(4*i))^4;
        grad(4*i-3)=(x(4*i-3)+10*x(4*i-2))+20*(x(4*i-3)-x(4*i))^3;
        grad(4*i-2)=10*(x(4*i-3)+10*x(4*i-2))+2*(x(4*i-2)-2*x(4*i-1))^3;
        grad(4*i-1)=5*(x(4*i-1)-x(4*i))-4*(x(4*i-2)-2*x(4*i-1))^3;
        grad(4*i)=-5*(x(4*i-1)-x(4*i))-20*(x(4*i-3)-x(4*i))^3;
    end
    grad=2*grad;
    
end