%  manygeneralchains.m generates multiple simulations using generalchain.m. 
num=6;
for v=1:num,
  subplot(num,1,v);
  generalchain;
end
