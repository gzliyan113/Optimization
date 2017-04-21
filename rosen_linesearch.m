function [iterates, pt]=rosen_linesearch(n,xt,dt,lambda,epsilon)
    lbound=0;
    ubound=lambda;
    mval=(lbound+ubound)/2;
    while abs(lbound-ubound)>epsilon
        if rosenbrock_grad1(n,xt+mval*dt)'*dt<0
            lbound=mval;
        else
            ubound=mval;
        end
        mval=(lbound+ubound)/2;
    end
    iterates=xt+mval*dt;
    pt=mval*dt;
end
