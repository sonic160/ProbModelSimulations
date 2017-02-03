%  gambling.m generates one outcome of Gambler's wealth 
p=0.5;       % probability of winning a hand
N=30;        % number of dollars at the table
n=225;       % number of hands to play

t=0:n;       % time indices
w(1)=10;     % 1st value, not time 1!

for i=1:n,
   if (w(i)>0) & (w(i)<N),
     if (rand < p),
       w(i+1)=w(i)+1;
     else
       w(i+1)=w(i)-1;
     end
   else
     w(i+1)=w(i);
   end
end


plot(t,w);                          % plot wealth versus time index
axis([0 n 0 N]);                    % [xmin xmax ymin ymax]
title('Gambler''s wealth, p=0.5');  
xlabel('Hand number n');
ylabel('Wealth W_n');
