% distribution.m computes and graphs the distribution of a Markov process
% over time

% Simply modify the initial distribution, lambda, jump matrix Q, and
% state space S

N     = length(S);                        % number of states
step  = Tmax/100;                         % standard time increment
T     = 0:step:Tmax;                      % vector of times

A     = diag(lambda)*(Q-eye(size(Q)));    % generator
Pstep = expm(A*step);                     % this is P(step); matrix exponential
m     = mu;                               % distribution at each step
dist  = mu;                               % each row of dist is distn at a time

for t=1:(length(T)-1),
  m    = m*Pstep;                         % step forward one time step
  dist = [dist; m];                       % add another row to m
end

for v=1:N,
  subplot(N,1,N-v+1);                     % one plot for each state
  plot(T,dist(:,v));                      % plot probability over time
  axis([0 Tmax 0 1]);
  ylabel(['P(X_{t} = ' num2str(S(v)) ')']);
end

subplot(N,1,1);
title('Probabilities of being in states 1, 2, 3, ... over time');

% Now compute the invariant/limiting distribution

eta = invariant(expm(A));

eta2 = invariant(Q)*diag(1./lambda);
eta2 = eta2/sum(eta2);                  % normalize


