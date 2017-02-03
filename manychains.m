%  manychains.m generates multiple simulations using chain.m. 
num=6;
for v=1:num,
  subplot(num,1,v);
  chain;
end
