% queue_two.m sets up matrices for a discrete queueing model with two servers

N=30;          % maximum number of customers in system
p=0.8;         % probability a transaction is finished in one time interval
lambda = 0.78; % average arrival rate of customers

D=zeros(N+1);  % set up (N+1) by (N+1) square matrix of zeros for departures
D(1,1) = 1;
D(2,1) = p;
D(2,2) = 1-p;
for i=3:(N+1),
  D(i,i-2) = p^2; 
  D(i,i-1) = 2*p*(1-p);
  D(i,i)   = (1-p)^2;
end

a = poisspdf(0:N, lambda);  % Poisson distributed number of arrivals

A=zeros(N+1);      % set up matrix for arrivals
for i=1:(N+1),
  A(i,i:N) = a(1:(N-i+1));    % insert the values of a
  A(i,N+1) = 1 - sum(A(i,:));       % make row sum to 1
end

P=D*A;             % transition matrix for number of customers in system
mu=[1 zeros(1,N)]; % initial distribution has an empty queue

% break            % uncomment this line to prevent showing the graphs

subplot(3,2,1)
graph_matrix(0,N,D)
title('Departure matrix D')

subplot(3,2,3)
graph_matrix(0,N,A)
title('Arrival matrix A')

subplot(3,2,5)
graph_matrix(0,N,P)
title('Transition matrix P')

subplot(3,2,2)
graph_matrix(0,N,P^10)
title('P^{10}')

subplot(3,2,4)
graph_matrix(0,N,P^100)
title('P^{100}')

subplot(3,2,6)
graph_matrix(0,N,P^1000)
title('P^{1000}')

orient tall
colormap(1-gray);
%colormap('default');
