% process_ex_2.m determines the parameters lambda and Q for a Markov chain, which can then be used to determine a Markov process

S  = [1 2 3 4];                  % state space
mu = [0.2 0 0 0.8];              % initial distribution
P  = [[ 0.095 0.8 0.095 0.01];   % transition matrix
      [ 0.095 0.095 0.8 0.01];
      [ 0.8 0.095 0.095 0.01];
      [ 0.0 0.05 0.0  0.95]];

lambda = 1-diag(P);              % jump rates/sojourn parameters
D = diag(diag(P));               % diagonal matrix with the same diagonal as P
Q = inv(diag(lambda))*(P-D);     % make diagonal zero, normalize rows

Tmax = 80;
