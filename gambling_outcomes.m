% gambling_outcomes.m generates several outcomes of Gambler's wealth
      
p=0.5;       % probability of winning a hand
N=30;        % number of dollars at the table

n=80;        % number of hands to play
t=0:n;       % time indices, t(1)=0, t(2)=1, ...

for i=1:4,

subplot(5,4,i);

w = [];
w(1)=10;     % 1st value, not time 1!

for i=1:n,
   if (w(i)>0) & (w(i)<30),
     if (rand < p),
       w(i+1)=w(i)+1;
     else
       w(i+1)=w(i)-1;
     end
   else
     w(i+1)=w(i);
   end
end

plot(t,w);
axis([0 n 0 N]);

end

n=225;
t=0:n;       % time indices, t(1)=0, t(2)=1, ...

for i=5:20,

subplot(5,4,i);

w = [];
w(1)=10;     % 1st value, not time 1!

for i=1:n,
   if (w(i)>0) & (w(i)<30),
     if (rand < p),
       w(i+1)=w(i)+1;
     else
       w(i+1)=w(i)-1;
     end
   else
     w(i+1)=w(i);
   end
end

plot(t,w);
axis([0 n 0 N]);

end

orient tall    % this command stretches the graph vertically when printing