% yule.m simulates the Yule process (a pure birth process)

cla;
Tmax=3;         % maximum time
n=10;           % initial population size
beta=1;         % single individual birth rate is 1

clear T;

T(1)=0;
i=1;

while T(i) < Tmax,                               % generate times of jumps
  T(i+1)=T(i)+random('Exponential',1/(beta*(n+i-1))); 
                                                 % parameter depends on size
  i=i+1;
end

Y=n:(i+n-1);          % vector of population sizes
stairs(T(1:i),Y);     % make a stair-step plot
hold on 

t=0:(Tmax/100):Tmax;  % vector of evenly-spaced times
Z=n*exp(t);           % deterministic exponential growth model, rate 1
plot(t,Z);            % add to the plot for comparison

%xlabel('Time');
%ylabel('Population size');

