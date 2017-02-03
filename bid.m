% bid.m simulates Poisson arrivals of iid bids for an item
% See problem V.6.10 in Taylor and Karlin

lambda=1;      % arrival rate
Tmax=1;        % maximum time

clear T;
clear V;
T(1)=random('Exponential',1/lambda);          % times of bids
i=1;

while (T(i) < Tmax),                          % generate times of bids
  T(i+1) = T(i)+random('Exponential',1/lambda);
  i=i+1;
end

V=rand(1,i);
i=i-1;

