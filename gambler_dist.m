% gambler_dist.m computes the distribution of Gambler's wealth after n hands 

% First run the program gambler.m to set up P and mu

M = mu;
n = 40;

for i=2:n,                 % get the distribution of W_1 to W_n
  M(i,:)=M(i-1,:)*P;
end

M(n+1,:)=M(1,:)*P^50;      % add a few at later times
M(n+2,:)=M(1,:)*P^100;
M(n+3,:)=M(1,:)*P^500;
M(n+4,:)=M(1,:)*P^1000;
M(n+5,:)=M(1,:)*P^2000;

clf

s = size(M);               % the size of the matrix M

x=-0.5:1:(N+0.5);          % vectors to help label the axes
y=-0.5:1:(n+4.5);

pcolor(x,y,[[M zeros(s(1),1)]; zeros(1,s(2)+1)]);
axis ij;
title('Graphical representation of distributions of W_{n}');
ylabel('Number of gambles (0-40, 50, 100, 500, 1000, 2000)')
xlabel('Total wealth')

orient landscape    % this command makes the graph appear sideways when printed
