%  manypoisson.m generates many outcomes of the Poisson process using poisson.m

num=16;
for v=1:num,
  subplot(num,1,v);
  poisson;
  while ((i < 7) | (i > 7)),
    poisson;
  end
  axis off;
end

subplot(num,1,1);
title('Outcomes of the Poisson processes, rate 10, time [2,5]')
  % Edit this line depending on your choice of parameters in poisson.m
