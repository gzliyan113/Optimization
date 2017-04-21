function [sol,value_hist]=CGFR(func,n,x0,x_star,epsilon,c1,c2,ubound,maxit)
    d0=zeros(n,1);
    d1=d0;
    [initial_gap, g0]=func(n,x0);
    iterates_gap=initial_gap;
    g1=g0;
    xt=x0;
    value_hist=[iterates_gap];
    
    while iterates_gap/initial_gap>epsilon
        [iterates_gap g1]=func(n,xt);
        beta=norm(g1)/norm(g0);
        d1=-g1+beta*d0;
        
        %do line search by wolfe condition
        [xt iterates_gap ngrad step inform]=cvsrch(func,n,xt,iterates_gap,g1,d1,ubound,c1,c2,0.0001,0,ubound,maxit);
        value_hist=[value_hist,iterates_gap];
        
        %update di's and gi's
        d0=d1;
        g0=g1;
    end
    
    sol=xt;
end


   