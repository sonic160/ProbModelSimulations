% repair.m sets up matrices for a model of the number of machines working
% and the number in repair

N = 40;                                 % total number of machines
M = 30;                                 % maximum number in use
R = 3;                                  % capacity of repair facility
S = 0:40;                               % state space
mu = zeros(1,N+1);                      % initial distribution
mu(M+1) = 1;              
Tmax = 20;                              % maximum time for simulation

delta = 1;                              % rate at which failures occur
rho = 10;                               % rate at which repairs occur

A = zeros(N+1);
for i=1:N,
  A(i+1,i) = delta*min(i,M);
  A(i,i+1) = rho*min(R,N+1-i);
end

for i=1:N+1,
  A(i,i) = -sum(A(i,:));
end

lambda = -diag(A);
Q = diag(1./lambda)*A+eye(size(A));

subplot(3,1,1)
process
title('repair.m, N = 40, M = 30, R = 3, \delta = 1, \rho = 10')
grid on

subplot(3,1,2)
process
grid on

subplot(3,1,3)
plot(0:N, invariant(expm(A)));
title('Invariant distribution')
