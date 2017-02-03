%  manypoisson_arrivals.m generates many outcomes of the Poisson process using poisson_arrivals.m

num=16;
for v=1:num,
  subplot(num,1,v);
  poisson_arrivals;
  axis off;
end

subplot(num,1,1);
title(['Poisson process arrival times, rate ' num2str(lambda) ', time [0,' num2str(Tmax) ']'])
