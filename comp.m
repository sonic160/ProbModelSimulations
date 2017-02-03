clf

N = 2000;

a = 0.2*poisspdf(0:90,5);
a(40:90) = poisspdf(0:50,20);
a(1)=0;
a=a/sum(a);

pi=component(a,N);

subplot(3,2,1)
stairs(0:(length(a)-1),a)
title('Bimodal distribution of life length F')
EF = sum(a.*[0:(length(a)-1)]);
text(10,0.06,['E[F] = ' num2str(EF)]);

subplot(3,2,2)
stairs(0:(length(pi)-1),pi)
title('Distribution of age of current component')
Eage = sum(pi.*[0:(length(pi)-1)]);
text(10,0.01,['E[age] = ' num2str(Eage)]);

p=0.09;
a(1)=0;
for i=2:101,
  a(i) = (p)*(1-p)^(i-2);                    % geometric distribution
end

sum(a)

pi=component(a,N);

subplot(3,2,3)
stairs(0:(length(a)-1),a)
title('Geometric distribution of life length F')
EF = sum(a.*[0:(length(a)-1)]);
text(10,0.06,['E[F] = ' num2str(EF)]);
axis([0 (length(a)-1) 0 0.1])

subplot(3,2,4)
stairs(0:(length(pi)-1),pi)
title('Distribution of age of current component')
Eage = sum(pi.*[0:(length(pi)-1)]);
text(10,0.06,['E[age] = ' num2str(Eage)]);
axis([0 (length(a)-1) 0 0.1])

a=zeros(1,101);
a(51:81)=1;
a=a/sum(a);

pi=component(a,N);

subplot(3,2,5)
stairs(0:(length(a)-1),a)
title('Uniform distribution of life length F')
EF = sum(a.*[0:(length(a)-1)]);
text(10,0.02,['E[F] = ' num2str(EF)]);

subplot(3,2,6)
stairs(0:(length(pi)-1),pi)
title('Distribution of age of current component')
Eage = sum(pi.*[0:(length(pi)-1)]);
text(10,0.01,['E[age] = ' num2str(Eage)]);


