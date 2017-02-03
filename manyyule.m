%  manyyule.m generates many outcomes of the Yule process using yule.m

m = 0;

num=8;
for v=1:num,
  subplot(4,2,v);
  yule;

  m = max(m,i-1);
end

for v=1:num,
  subplot(4,2,v);
  axis([0 Tmax 0 m]);
end

subplot(4,2,1);
title(['Outcomes of the Yule process, X_{0} = ' num2str(n) ', birth rate ' num2str(beta)'])
