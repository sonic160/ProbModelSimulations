% bid_return.m calculates the expected return on a bidding strategy
% See problem V.6.10 in Taylor and Karlin

lambda=1;      % arrival rate
Tmax=1;        % maximum time

s=0;
n=1;

while 0<1,

bid

if i==0
  sale=0;
else
  j=1;
  while ((j<=i) & (V(j)< (1-T(j))/(3-T(j)) )),  % strategy is encoded here
%  while ((j<=i) & (V(j)< (1-T(j)) )),  % strategy is encoded here
    j=j+1;                                      % unaccepted bid
  end;
  if j>i
    sale=0;
  else
    sale=V(j);
  end
end

s=s+sale;
p=s/n
n=n+1;

end;