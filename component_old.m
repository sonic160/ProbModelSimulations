% component.m sets up matrices for a model of the age of a component

% a is the life length distribution, for values 0, 1, 2, 3, etc.
% The Matlab index is 1, 2, 3, etc.
% N is the age at which to replace.
% Use N=99999999; to never replace the component.

% Be sure to specify the values of a and N before running this program

%=================================== No need to change what is below ========

M=length(a)-1;          % maximum age of the component before it fails
L=min(M,N);             % maximum age using replacement at age N
S=[0:(L-1)];            % state space 

mu=zeros(1,L);          % initial distribution
mu(1)=1;                % start with a new component

P=zeros(L);             % set up a transition matrix
                        % row i corresponds to current age being i-1

A=1-cumsum(a);          % sums of the tail of a

for i=1:(L-1),
  P(i,1)=a(i+1)/A(i+1); % probability of failing after one more unit of time
  P(i,i+1)=1-P(i,1);    % probability of living more than one more unit of time
end
P(L,1)=1;               % component is replaced when its current age is L-1

EF = a(1:(L-1))*(0:(L-2))' + A(L)*(L-1);

b      = a(1:L+1);      % new age distribution with replacement at N
b(L+1) = 1-sum(b(1:L)); % Make b sum to 1, accounting for early replacements

EF = b * (1:L)';        % expected life length of a component
pi = A/EF;              % limiting distribution

