% gambler_visits.m displays the expected number of visits to transient
% states matrix W, the expected length of the game, and the probability of
% hitting matrix F

% run gambler.m first

r = [1 N+1];            % recurrent states
t = [2:N];              % transient states
Q = P(t,t);             % pull out the matrix corresponding to transient states
L = P(t,r);             % transitions from transient to recurrent states

W = inv(eye(size(Q))-Q); % compute the expected number of visits to states in t

m = sum(W')';            % expected number of visits before the end of the game

F(r,r) = eye(size(P(r,r)));
F(r,t) = zeros(size(L'));
F(t,r) = W*L;
F(t,t) = (W-eye(size(W)))*inv(diag(diag(W)));

clf;

subplot(2,1,1);

graph_matrix(1,N-1,W);
title('Graphical representation of expected number of visits matrix W');
ylabel('Initial state');
xlabel('Visited state');

subplot(2,1,2);

graph_matrix(0,N,F);
title('Graphical representation of probability of hitting matrix F');
ylabel('Initial state');
xlabel('Hit state');

fprintf('Expected length of game, as a function of initial wealth:')
[(1:(N-1))' m]

