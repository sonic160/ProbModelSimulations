% process.m simulates a Markov process on a state space S, using initial
% distribution mu, sojourn parameters lambda, and jump matrix Q.

clear T;
clear x;             % clear out previous values

T(1) = 0;            % start times at 0
x(1) = rando(mu);    % generate first x value (time 0, not time 1)
i    = 1;

while T(i) < Tmax,
  T(i+1) = T(i)  - log(rand)/lambda(x(i));  % generate exponential rv
                                % occasionally causes errors; ignore them
  x(i+1) = rando(Q(x(i),:));    % use Q to make state transitions
  i=i+1;
end

cla;
hold on

for i=1:(length(T)-1),
  plot([T(i) T(i+1)], [S(x(i)) S(x(i))]);
end

%stairs(T,S(x));                 % sometime this is more appropriate
axis([0 Tmax 0 (length(mu)+1)]);
xlabel('Time');
