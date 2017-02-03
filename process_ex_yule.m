% process_ex_yule.m sets up parameters for a simple Yule process

Tmax=5;                               % maximum time
b=1;                                   % birth rate
n=30;                                  % maximum population size

S = 1:n;                               % state space
mu=[1 zeros(1,n-1)];                   % initial distribution
lambda=b*(1:n);                        % sojourn parameters
lambda(n)=0.01;                        % stick in state n
Q=diag(ones(1,n-1),1);
Q(n,n)=1;                              % make state n absorbing
