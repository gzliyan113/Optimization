% % Probelm1.Part(a).Rosenbrock function minimization
% %Gradient Descent to Rosenbrock
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/2)
%     x0(2*i-1)=-1.2;
%     x0(2*i)=1;
% end
% x_star=ones(n,1);
% 
% 
% [sol,num, value_hist]=gradescent(@rosenbrock,n,x0,x_star,10^(-6),0.01,0.5,20,40);
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: Steepest Descent-Rosenbrock');
% xlabel('iteration num');
% ylabel('function value');
% 
% sol;
% num;
% toc
% 
% 
% %Quasi Newton to Rosenbrock-DFP
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/2)
%     x0(2*i-1)=-1.2;
%     x0(2*i)=1;
% end
% x_star=ones(n,1);
% [sol, value_hist]=DFP(@rosenbrock,n,x0,x_star,10^(-6),0.01,0.02,2,40);
% sol;
% 
% % %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: QuasiNewton(DFP)-Rosenbrock');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% 
% % Quasi Newton to Rosenbrock-BFGS(the parameter of line search matters alot,
% % especially the search upper bound)
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/2)
%     x0(2*i-1)=-1.2;
%     x0(2*i)=1;
% end
% x_star=ones(n,1);
% 
% [sol, value_hist]=BFGS(@rosenbrock,n,x0,x_star,10^(-6),0.01,0.02,2,40);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: QuasiNewton(BFGS)-Rosenbrock');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% % L-BFGS to Rosenbrock
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/2)
%     x0(2*i-1)=-1.2;
%     x0(2*i)=1;
% end
% x_star=ones(n,1);
% [sol value_hist]=LBFGS(@rosenbrock,n,x0,500,x_star,10^(-6),0.01,0.02,20,40);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: QuasiNewton(LBFGS)-Rosenbrock');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% 
% % CG-Fletech-Reeves to Rosenbrock
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/2)
%     x0(2*i-1)=-1.2;
%     x0(2*i)=1;
% end
% x_star=ones(n,1);
% [sol, value_hist]=CGFR(@rosenbrock,n,x0,x_star,10^(-6),0.01,0.02,20,40);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: Conjugate Gradient(FR)-Rosenbrock');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% % CG-Polak-Ribiere to Rosenbrock
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/2)
%     x0(2*i-1)=-1.2;
%     x0(2*i)=1;
% end
% x_star=ones(n,1);
% [sol, value_hist]=CGPR(@rosenbrock,n,x0,x_star,10^(-6),0.01,0.02,20,40);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: Conjugate Gradient(PR)-Rosenbrock');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc

% % Problem1.Part(b).Extended Powell Singular Function Minimization
% % Gradient Descent to ExPowellSingular
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/4)
%     x0(4*i-3)=3;
%     x0(4*i-2)=-1;
%     x0(4*i-1)=0;
%     x0(4*i)=1;
% end
% x_star=zeros(n,1);
% 
% 
% [sol,num, value_hist]=gradescent(@ExPowellSingular,n,x0,x_star,10^(-6),0.001,0.5,10,40);
% sol;
% num;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: Steepest Descent-ExPowellSingular');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% 
% % Quasi Newton to ExPowellSingular-DFP
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/4)
%     x0(4*i-3)=3;
%     x0(4*i-2)=-1;
%     x0(4*i-1)=0;
%     x0(4*i)=1;
% end
% x_star=zeros(n,1);
% 
% [sol, value_hist]=DFP(@ExPowellSingular,n,x0,x_star,10^(-6),0.0001,0.03,20,100);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: QuasiNewton(DFP)-ExPowellSingular');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% 
% % Quasi Newton to ExPowellSingular-BFGS
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/4)
%     x0(4*i-3)=3;
%     x0(4*i-2)=-1;
%     x0(4*i-1)=0;
%     x0(4*i)=1;
% end
% x_star=zeros(n,1);
% 
% [sol, value_hist]=BFGS(@ExPowellSingular,n,x0,x_star,10^(-6),0.0001,0.5,10,40);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: QuasiNewton(BFGS)-ExPowellSingular');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% % L-BFGS to ExPowellSingular
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/4)
%     x0(4*i-3)=3;
%     x0(4*i-2)=-1;
%     x0(4*i-1)=0;
%     x0(4*i)=1;
% end
% x_star=zeros(n,1);
% 
% [sol, value_hist]=LBFGS(@ExPowellSingular,n,x0,500,x_star,10^(-6),0.001,0.5,10,40);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: QuasiNewton(LBFGS)-ExPowellSingular');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% 
% % CG-Fletech-Reeves to ExPowellSingular
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/4)
%     x0(4*i-3)=3;
%     x0(4*i-2)=-1;
%     x0(4*i-1)=0;
%     x0(4*i)=1;
% end
% x_star=zeros(n,1);
% 
% [sol, value_hist]=CGFR(@ExPowellSingular,n,x0,x_star,10^(-6),0.001,0.5,10,40);
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: ConjugateGradient(FR)-ExPowellSingular');
% xlabel('iteration num');
% ylabel('function value');
% 
% sol;
% toc
% 
% % CG-Polak-Ribiere to ExPowellSingular
% tic
% n=2000;
% x0=zeros(n,1);
% for i=1:(n/4)
%     x0(4*i-3)=3;
%     x0(4*i-2)=-1;
%     x0(4*i-1)=0;
%     x0(4*i)=1;
% end
% x_star=zeros(n,1);
% 
% [sol,value_hist]=CGPR(@ExPowellSingular,n,x0,x_star,10^(-6),0.001,0.5,10,40);
% sol;
% 
% %Plot value against iteration
% x=1:length(value_hist);
% figure
% plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
% %axis([0,length(x) -0.5*10^6 10^7]);
% title('Function value at each iteration: ConjugateGradient(PR)-ExPowellSingular');
% xlabel('iteration num');
% ylabel('function value');
% 
% toc
% 
% 
% % Problem2.Nesterov's Method-Function 1-(a)Unconstrained case
rng(1);
n=10000;
delta=0.05;
Q=2*eye(n);
for i=1:n
    if i<n
        Q(i,i+1)=-1;
    end
    if i>1
        Q(i,i-1)=-1;
    end
    
end
Q=Q+delta*eye(n);
b=randn(n,1);

%the objective have L=4.05 and u=0.05;
%randomly choose x0
x0=100*rand(n,1);

tic

[sol, value_hist, grad_hist]=Nesterov_Unconstrained(Q,b,0.05,4.05,x0,10^(-4));
value_hist1=value_hist;
x=1:length(value_hist);
figure
plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
%axis([0,length(x) -0.5*10^6 10^7]);
title('Function value at each iteration: Unconstrained Nesterovs''Method');
xlabel('iteration num');
ylabel('function value');
% f_star=-b'*inv(Q)*b/2
grad_hist;

toc


% % Nesterov's Method-Function 1-(b)Constrained case
rng(1);
n=10000;
delta=0.05;
Q=2*eye(n);
for i=1:n
    if i<n
        Q(i,i+1)=-1;
    end
    if i>1
        Q(i,i-1)=-1;
    end
    
end
Q=Q+delta*eye(n);
b=randn(n,1);

% the objective have L=4.05 and u=0.05;
% randomly choose x0
x0=100*rand(n,1);

tic

[sol, value_hist, hist]=Nesterov_Constrained(n,Q,b,0.05,4.05,x0);
value_hist2=value_hist;
x=1:length(value_hist);
figure
plot(x,value_hist,'LineWidth',0.75,'Marker','+','MarkerSize',3);
%axis([0,length(x) -0.5*10^6 10^7]);
title('Function Value at each iteration: Constrained Nesterov''s Method');
xlabel('iteration num');
ylabel('function value');

% f_star=-b'*inv(Q)*b/2
% sol_star=inv(Q)*b;

toc


