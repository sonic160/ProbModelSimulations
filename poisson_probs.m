% poisson_probs.m displays the probability distribution of the Poisson process as a function of time

t=0:0.1:10;        % vector of times to look at
lambda = 1;        % arrival rate

for v = 1:8,
  subplot(8,1,9-v)
  p = exp(-lambda*t) .* (lambda*t).^(v-1) ./ gamma(v);
  plot(t,p);
  ylabel(['P(N_{t}=' num2str(v-1) ')']);
end

title('Distribution of N_{t}');

subplot(8,1,8)
xlabel('Time t')

