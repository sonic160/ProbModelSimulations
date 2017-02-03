% gambler_length.m computes the distribution of the length of the game

% First run the program gambler.m to set up P and mu

M = mu;
n = 3000;
F = zeros(1,n+1);          % vector of zeros for CDF of game length
F(1) = 0;

for i=1:n,                 % get the distribution of W_1 to W_n
  M = M*P;
  F(i+1) = M(1) + M(N+1);
end

subplot(2,1,1)

stairs(0:n, F);
title('Cumulative distribution function of game length')
axis([0 1000 0 1]);

subplot(2,1,2)

f = diff(F);               % pdf of game length
plot(1:n, f, '.');
title('Distribution of game length')
axis([0 1000 0 max(f)]);

EN = sum(1-F);
fprintf('Average game length is %4.4f\n', EN);