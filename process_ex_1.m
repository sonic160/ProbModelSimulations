% process_ex_1.m sets up parameters for a three-state Markov process

S      = [1 2 3];                               % state space
Tmax   = 80;                                    % maximum time
mu     = [0 0 1];                               % initial distribution
lambda = [0.1 0.08 0.5];                        % sojourn parameters
Q      = [[0 .8 .2]; [.7 0 .3]; [.9 .1 0]];     % jump matrix

