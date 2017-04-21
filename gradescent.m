function [sol, num, value_hist] = gradescent(func,n,x0,x_star,epsilon,c1,c2,ubound,maxit)
    initial_gap=func(n,x0);
    xt=x0;
    iterates_gap=func(n,xt);
    num=0;
    value_hist=[initial_gap];
    while iterates_gap/initial_gap>epsilon
        [iterates_gap grad]=func(n,xt);
        %use line search satisying strong wolfe condition
        [xt iterates_gap ngrad step inform]=cvsrch(func,n,xt,iterates_gap,grad,-grad,ubound,c1,c2,0.0001,0,ubound,maxit);
        num=num+1;
        value_hist=[value_hist iterates_gap];
    end
        
    sol=xt;
end


    