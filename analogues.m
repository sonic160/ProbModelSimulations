clf

subplot(4,1,1)

p=0.5;       % probability 
n=50; 

t=0:n;       % time indices
x=zeros(1,n+1);

for i=1:n,
     if (rand < p),
       x(i+1)=x(i)+1;
     else
       x(i+1)=x(i)-1;
     end
end

plot(0:n,x)
m = max(-min(x),max(x));
axis([0 n -2*sqrt(n) 2*sqrt(n)]);
title('Symmetric random walk');

subplot(4,1,2)

p=0.5;       % probability 
n=10000; 

t=0:n;       % time indices
x=zeros(1,n+1);

for i=1:n,
     if (rand < p),
       x(i+1)=x(i)+1;
     else
       x(i+1)=x(i)-1;
     end
end

plot(0:n,x)
m = max(-min(x),max(x));
axis([0 n -sqrt(n) sqrt(n)]);
title('Brownian motion');

subplot(4,1,3)

N=10;
n=50; 

t=0:n;       % time indices
x=zeros(1,n+1);

for i=1:n,
     if (rand < 0.5+x(i)/N),
       x(i+1)=x(i)-1;
     else
       x(i+1)=x(i)+1;
     end
end

plot(0:n,x)
m = max(-min(x),max(x));
axis([0 n -m m]);
title('Ehrenfest urn model');


subplot(4,1,4)

N=500;
n=10000; 

t=0:n;       % time indices
x=zeros(1,n+1);

for i=1:n,
     if (rand < 0.5+x(i)/N),
       x(i+1)=x(i)-1;
     else
       x(i+1)=x(i)+1;
     end
end

plot(0:n,x)
m = max(-min(x),max(x));
axis([0 n -m m]);
title('Ornstein-Uhlenbeck process');


