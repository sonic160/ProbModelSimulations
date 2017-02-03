%  manypoisson.m generates many outcomes of the Poisson process using poisson.m

m = 0;

num=8;
for v=1:num,
  subplot(4,2,v);
  poisson;

  m = max(m,i-1);
end

for v=1:num,
  subplot(4,2,v);
  axis([0 Tmax 0 m]);
end

subplot(4,2,1);
title(['Outcomes of the Poisson process, rate ' num2str(lambda)'])
