function [sol,value_hist, grad_hist]=Nesterov_Unconstrained(Q,b,u,l,x0,epsilon)
    %Note that here the objective is convex, thus for small enough gradient
    %we should well approximate the global optimum
    %The algorithm follows the constant step skeme II from page 75 of
    %Introductory Lectures on Convex Programming
    initial_grad=Q*x0-b;
    iterates_grad=initial_grad;
    yt=x0;
    xt_o=x0;
    xt_n=xt_o;
    at_o=sqrt(u/l);
    at_n=at_o;
    q=u/l;
    
    iterates_val=xt_n'*Q*xt_n/2-b'*xt_n;
    value_hist=[iterates_val];
    grad_hist=[norm(iterates_grad)];
    
    while norm(iterates_grad)/(norm(initial_grad)+1)>epsilon
          grad=Q*yt-b;
          xt_n=yt-1/l*grad;
          at_n=(q-at_o^2+sqrt((at_o^2-q)^2+4*at_o^2))/2;
          beta=(at_o*(1-at_o))/(at_o^2+at_n);
          yt=xt_n+beta*(xt_n-xt_o);
          
          iterates_grad=Q*xt_n-b;
          iterates_val=xt_n'*Q*xt_n/2-b'*xt_n;
          value_hist=[value_hist iterates_val];
          grad_hist=[grad_hist norm(iterates_grad)];
          
          xt_o=xt_n;
          at_o=at_n;
          
    end
    sol=xt_o;
end

    