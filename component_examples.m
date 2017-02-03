% component_examples.m sets up three examples of life length distributions and computes the optimal scheduled replacement times

clf

N = 2000;

a(1) = 0;
a(2:90)  = 0.2*poisspdf(0:88,5);
a(40:90) = 0.8*poisspdf(0:50,22);
a=a/sum(a);
N=9999999;

component;

figure(1)

subplot(3,2,1)
stairs(0:(length(a)-1),a)
title('Bimodal distribution of life length F')
text(10,0.06,['E[F] = ' num2str(EF)]);

subplot(3,2,2)
stairs(0:(length(pi)-1),pi)
title('Distribution of age of current component')
Eage = sum(pi.*[0:(length(pi)-1)]);
text(10,0.01,['E[age] = ' num2str(Eage)]);

figure(2)

subplot(3,1,1)
replacement_policy

p = 0.1;
a = zeros(1,150);
for i=2:length(a),
  a(i) = (p)*(1-p)^(i-2);                    % geometric distribution
end
a=a/sum(a);
N=9999999;

component;

figure(1)

subplot(3,2,3)
stairs(0:(length(a)-1),a)
title('Geometric distribution of life length F')
text(10,0.06,['E[F] = ' num2str(EF)]);
axis([0 (length(a)-1) 0 0.1])

subplot(3,2,4)
stairs(0:(length(pi)-1),pi)
title('Distribution of age of current component')
Eage = sum(pi.*[0:(length(pi)-1)]);
text(10,0.06,['E[age] = ' num2str(Eage)]);
axis([0 (length(a)-1) 0 0.1])

figure(2)

subplot(3,1,2)
replacement_policy
axis([0 length(a) 0 2]);

a=zeros(1,81);
a(51:81)=1;
a=a/sum(a);
N=9999999;

component;

figure(1)

subplot(3,2,5)
stairs(0:(length(a)-1),a)
title('Uniform distribution of life length F')
text(10,0.02,['E[F] = ' num2str(EF)]);
hold on
plot([80 80], [0 a(80)]);
axis([0 100 0 .035]);

subplot(3,2,6)
stairs(0:(length(pi)-1),pi)
title('Distribution of age of current component')
Eage = sum(pi.*[0:(length(pi)-1)]);
text(10,0.01,['E[age] = ' num2str(Eage)]);
axis([0 100 0 0.016]);

figure(2)

subplot(3,1,3)
replacement_policy


