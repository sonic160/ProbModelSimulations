% many.m combines output of several runs of a program into a single graph
num=8;
for v=1:num,
  subplot(4,2,v);
  process;
end
