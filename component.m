% component.m sets up matrices for a model of the age of a component

% a is the life length distribution, for values 0, 1, 2, 3, etc.
% The Matlab index is 1, 2, 3, etc.
% N is the age at which to replace.
% Use N=99999999; to never replace the component.

% Be sure to specify the values of a and N before running this program

%=================================== No need to change what is below ========

M=length(a)-1;          % maximum age of the component before it fails
L=min(M,N);             % maximum age using replacement after age N-1
S=[0:(L-1)];            % state space 

mu=zeros(1,L);          % initial distribution
mu(1)=1;                % start with a new component

A=[];

for i=1:(M+1);          % tail sums of a
  A(i) = sum(a(i:(M+1)));
end

EF = a(1:L)*(0:(L-1))' + A(L+1)*L;
                        % expected time until failure, lumping replacement
                        % after age N-1 into probability of lasting N units

pi = A(2:(L+1))/EF;     % limiting distribution

pi2 = A(2:(L+1));
pi2 = pi2/sum(pi2);
EF2 = 1/pi2(1);

break

P=zeros(L);             % set up a transition matrix
                        % row i corresponds to current age being i-1

for i=1:(L-1),
  P(i,1)=a(i+1)/A(i+1); % probability of failing after one more unit of time
  P(i,i+1)=1-P(i,1);    % probability of living more than one more unit of time
end
P(L,1)=1;               % component is replaced when its current age is L-1

