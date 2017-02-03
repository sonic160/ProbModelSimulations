% limiting.m finds a limiting distribution corresponding to a transition matrix, if it exists

function pi = limiting(M)

d   = size(M);
pi  = ones(1,d(1))/d(1);               % try to start close to invariant distn
pi2 = pi*M;
z=0;

while (max(abs(pi-pi2)) > 0.00000001) & (z < 2000),
  pi  = pi2;
  pi2 = pi2*M;  
  z   = z+1;
end

pi=pi2;
