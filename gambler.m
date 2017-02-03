% gambler.m  sets up the transition matrix for Gambler's wealth.

N=30;             % total wealth at the table
p=0.5;            % probability of increasing wealth by 1
q=1-p;

P=zeros(N+1);     % set up a matrix of zeros, of the right size
                  % rows 1..N+1 correspond to wealths 0..N

for i=2:N,        % let i take values 2, 3, 4, ..., N
   P(i,i-1)=q;    % wealth decreases by 1
   P(i,i+1)=p;    % wealth increases by 1
end

P(1,1)=1;         % stay at 0 wealth with probability 1
P(N+1,N+1)=1;     % stay at wealth N with probability 1

mu=zeros(1,N+1);  % set up initial distribution
mu(11)=1;         % start with wealth 10 with probability 1

% the commands below change the color of the graphs

colormap(1-gray);     % uncomment this command before printing a color graph
%colormap('default'); % uncomment this command to see color graphs on screen
orient tall           % stretch graph vertically when printing

% the commands below display P and powers of P

x=-0.5:1:(N+0.5); % column numbers
y=x;              % row numbers

subplot(3,2,1);   % 3 by 2 array of plots, this is plot # 1

pcolor(x, y, [[P zeros(N+1,1)]' zeros(N+2,1)]');   % display matrix P
axis ij;          % number the axes as for a matrix, not a regular graph
title('Graphical representation of transition matrix P');
xlabel('Final state');
ylabel('Initial state');

subplot(3,2,3);   % 3 by 2 array of plots, this is plot # 1

pcolor(x, y, [[P^2 zeros(N+1,1)]' zeros(N+2,1)]');
axis ij;
title('Graphical representation of P^2');
xlabel('Final state');
ylabel('Initial state');

subplot(3,2,5);

pcolor(x, y, [[P^4 zeros(N+1,1)]' zeros(N+2,1)]');
axis ij;
title('Graphical representation of P^{4}');
xlabel('Final state');
ylabel('Initial state');

subplot(3,2,2);

pcolor(x, y, [[P^20 zeros(N+1,1)]' zeros(N+2,1)]');
axis ij;
title('Graphical representation of P^{20}');
xlabel('Final state');
ylabel('Initial state');

subplot(3,2,4);

pcolor(x, y, [[P^225 zeros(N+1,1)]' zeros(N+2,1)]');
axis ij;
title('Graphical representation of P^{225}');
xlabel('Final state');
ylabel('Initial state');

subplot(3,2,6);

pcolor(x, y, [[P^2000 zeros(N+1,1)]' zeros(N+2,1)]');
axis ij;
title('Graphical representation of P^{2000}');
xlabel('Final state');
ylabel('Initial state');

