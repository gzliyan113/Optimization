function [sol, value_hist]=Nesterov_Constrained(n,Q,b,u,l,x0)
    %We follow constance step scheme III on page 84 of Introductory
    %Lectures on Convex Programming
    
    %For constrained nesterov method, we only need to project the iterates
    %back to feasible set after appling gradient descent.
    
    %Termination Criterion: Due to projection, there might be loop that algorithm
    %proceeds to one point and stays there(in exact sense,). In this case
    %we also have arrived at the global optimum.
    %The loop can be identified when 3 consecutive iterates coincides with 
    %each other. 
    %On the other hand, if the aforementioned case do not happened
    %during the procedure, then evetually iterates are close to optimum,
    %hence in this case distance of iterates are also close in the end.
    %Hence we terminate the algorithm whenever 3 consecutive iterates are 
    %sufficiently close to each other.
    
    val=1/2*x0'*Q*x0+b'*x0;
    yt=x0;
    %history stores newest 3 iterates
    history=10*rand(n,3);
    xt_o=x0;
    xt_n=x0;
    at_o=sqrt(u/l);
    at_n=at_o;
    q=u/l;
    k=1;
    value_hist=[val];
    while norm(history(:,1)-history(:,2))+norm(history(:,2)-history(:,3))>0.0001*n
          grad=Q*yt-b;
          xt_n=yt-1/l*grad;
          %projection
          xt_n(xt_n<0)=0;
                              
          at_n=(q-at_o^2+sqrt(q+3*at_o^2))/2;
          beta=(at_o*(1-at_o))/(at_o^2+at_n);
          yt=xt_n+beta*(xt_n-xt_o);
          
          val=xt_n'*Q*xt_n/2-b'*xt_n
          value_hist=[value_hist val];
         
          xt_o=xt_n;
          at_o=at_n;
          
          history(:,1:2)=history(:,2:3);
          history(:,3)=xt_o;
                    
    end
   
    sol=xt_o;
end

    