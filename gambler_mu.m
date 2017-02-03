% gambler_mu.m computes the distribution of Gambler's wealth after n hands 

% First run the program gambler.m to set up P and mu

M = mu;

for i=2:30,
  M(i,:)=M(i-1,:)*P;
end

M(31,:)=M(1,:)*P^50;
M(32,:)=M(1,:)*P^100;
M(33,:)=M(1,:)*P^500;
M(34,:)=M(1,:)*P^1000;
M(35,:)=M(1,:)*P^2000;

clf

s = size(M);               % the size of the matrix M

x=-0.5:1:(N+0.5);
y=x;
pcolor([[M zeros(s(1),1)]; zeros(1,s(2)+1)]);
axis ij;
title('Graphical representation of distributions of W_{n}');
