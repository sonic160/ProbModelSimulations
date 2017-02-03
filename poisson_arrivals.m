% poisson.m simulates the arrival times of a homogeneous Poisson process

lambda=10;      % arrival rate
Tmax=3;         % maximum time

clear T;
T(1)=random('Exponential',1/lambda);
i=1;

while T(i) < Tmax,
  T(i+1)=T(i)+random('Exponential',1/lambda);
  i=i+1;
end

Y=zeros(1,i-1);
plot(T(1:(i-1)),Y,'.');