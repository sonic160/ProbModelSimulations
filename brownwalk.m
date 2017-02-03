% brownwalk.m displays realizations of symmetric random walk and the Wiener
% process

figure(1)

N=20;                               % number of steps to take

X=zeros(1,N+1);
W=X;

for i=1:N,
  X(i+1) = X(i) + rando([0.5 0 0.5]) - 2;
  W(i+1) = W(i) + randn;
end

m = max(max(abs(X), abs(W)));

subplot(2,2,1)

plot(0:N, X);
axis([0 N -m m]);
title('N=20')
ylabel('Symmetric random walk')

subplot(2,2,3)

plot(0:N, W);
axis([0 N -m m]);
ylabel('Interpolated Brownian motion')

N=200;                               % number of steps to take

X=zeros(1,N+1);
W=X;

for i=1:N,
  X(i+1) = X(i) + rando([0.5 0 0.5]) - 2;
  W(i+1) = W(i) + randn;
end

m = max(max(abs(X), abs(W)));

subplot(2,2,2)

plot(0:N, X);
axis([0 N -m m]);
title('N=200')

subplot(2,2,4)

plot(0:N, W);
axis([0 N -m m]);

break

figure(2)

N=2000;                               % number of steps to take

X=zeros(1,N+1);
W=X;

for i=1:N,
  X(i+1) = X(i) + rando([0.5 0 0.5]) - 2;
  W(i+1) = W(i) + randn;
end

m = max(max(abs(X), abs(W)));

subplot(2,2,1)

plot(0:N, X);
axis([0 N -m m]);
title('N=2000')
ylabel('Symmetric random walk')

subplot(2,2,3)

plot(0:N, W);
axis([0 N -m m]);
ylabel('Interpolated Brownian motion')

N=20000;                               % number of steps to take

X=zeros(1,N+1);
W=X;

for i=1:N,
  X(i+1) = X(i) + rando([0.5 0 0.5]) - 2;
  W(i+1) = W(i) + randn;
end

m = max(max(abs(X), abs(W)));

subplot(2,2,2)

plot(0:N, X);
axis([0 N -m m]);
title('N=20000')

subplot(2,2,4)

plot(0:N, W);
axis([0 N -m m]);
