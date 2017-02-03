% poisson.m simulates a Poisson process

lambda=1;      % arrival rate
Tmax=10;         % maximum time

clear T;
T(1)=random('Exponential',1/lambda);
i=1;

while T(i) < Tmax,
  T(i+1)=T(i)+random('Exponential',1/lambda);
  i=i+1;
end

T(i)=Tmax;

stairs(T(1:i), 0:(i-1));
