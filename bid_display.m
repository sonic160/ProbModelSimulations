% bid_display.m displays the arrivals and values of bids
% See problem V.6.10 in Taylor and Karlin

bid;

t=0:0.02:1;
accept=(1-t)./(3-t);     % strategy is to accept bid at time t above accept

cla;
plot(T(1:i),V(1:i),'o');
hold on
plot(t,accept);
axis([0 1 0 1]);


