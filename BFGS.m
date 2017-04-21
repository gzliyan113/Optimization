function [solution, value_hist]=BFGS(func,n,x0,x_star,epsilon,c1,c2,ubound,maxit)
    initial_gap=func(n,x0);
    xt=x0;
    Dt=eye(n);
    iterates_gap=func(n,xt);
    value_hist=[iterates_gap];
    k=1;
    while iterates_gap/initial_gap>epsilon
        [iterates_gap grad]=func(n,xt);
       
        %Use line serach satisyinf wolfe condition
        dt=-Dt*grad;
        [xt iterates_gap ngrad step inform]=cvsrch(func,n,xt,iterates_gap,grad,dt,ubound,c1,c2,0.0001,0,ubound,maxit);
        pt=step*dt;
        
        value_hist=[value_hist iterates_gap];
        
        %We used Armijo rule to determine stepsize;
%         beta=0.5;
%         sigma=0.01;
%         dt=-Dt*grad;
%         k=0;
%         f0=func(n,xt);
%         while f0-func(n,xt+(beta^k)*dt)< -sigma*(beta^k)*grad'*dt;
%             k=k+1;
%         end
%         pt=(beta^k)*dt;
%         xt=xt+(beta^k)*dt;
%         norm(grad)
        
        %We used approximate line minimization to determine stepsize
        
%         dt=-Dt*grad;
%         [xt pt]=rosen_linesearch(n,xt,dt,1,0.0001);
        
        %use exact line search
%         dt=-Dt*grad;
%         eta=fminbnd(@(alpha) func(n,xt+alpha*dt),0,0.9);
%         pt=eta*dt;
%         xt=xt+pt;
        
        %now updating matrix Dt according to DFP rule
        
        qt=ngrad-grad;
        tau_t=(qt)'*Dt*qt;
        vt=pt/(pt'*qt)-(Dt*qt)/tau_t;
        Dt=Dt+(pt*pt')/(pt'*qt)-(Dt*qt*qt'*Dt)/(qt'*Dt*qt)+tau_t*vt*vt';
        
    end
    solution=xt;
       
        
        
       
   
end