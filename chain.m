%  chain.m simulates a Markov chain on {1, 2, ..., n} given an initial 
%  distribution and a transition matrix. 

% Program to simulate a Markov chain
% You might want to set up another .m file that defines mu and P
% The program assumes that the states are labeled 1, 2, ...

% Below is a sample, which you can use by uncommenting these lines
% mu=[1 0 0];     % initial distribution
% P=[[.6 .3 .1]; [.3 .3 .4]; [.4 .1 .5]];  % transition matrix

n=80;           % number of time steps to take
x=zeros(1,n+1); % clear out any old values
t=0:n;          % time indices

x(1)=rando(mu); % generate first x value (time 0, not time 1)

for i=1:n,
  x(i+1) = rando(P(x(i),:));
end

plot(t, x, '*');
axis([0 n 0 (length(mu)+1)]);
