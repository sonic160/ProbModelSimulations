% replacement_policy uses component.m to compare possible replacement policies

% first define the age distribution a

% ====================================  Age at which to replace the component

cost = zeros(1,length(a));
cost2 = cost;

C=2;           % cost of replacement
K=10;          % cost of failure

for N=1:length(a),  % cycle through the analysis for each value of N

  component      % set up matrices for component age and cost

  c=zeros(L,1);  % vector for costs of being in each state
  c(1)=C+K;
  if N < M,      % if the oldest possible component is replaced
    c(L)=c(L)-K; % credit K to the cost
  end

  cost(N) = pi*c;

%  cost2(N) = (C+K*(1-A(N+1)))/sum(A(2:(N+1)));

end              % loop on N

plot(cost)
hold on
title('Cost under different replacement policies')
xlabel('Age at mandatory replacement')
ylabel('Cost')

[m,i] = min(cost);

plot(i,m,'*')

text(10,C/2,['Minimum cost ' num2str(m) ' when N = ' int2str(i)])

%max(abs(cost-cost2))
