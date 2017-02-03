%  manyprocesses.m generates multiple simulations using process.m. 
num=6;
for v=1:num,
  subplot(num,1,v);
  process;
end
