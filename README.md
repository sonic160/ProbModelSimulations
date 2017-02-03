# ProbModelSimulations
Downloaded from http://www-math.bgsu.edu/~zirbel/ap/

Matlab program files for Math 445/545 Applied probability

General

 instructions  contains step by step directions for getting started with Matlab.
 Download this zip file of all programs mentioned on this page
 showmatrix.m displays a matrix, no matter how wide it is.  It can be edited to change the number of decimal places shown.
 graph_matrix.m produces a graphical display of a transition matrix. Output
 invariant.m finds an invariant distribution corresponding to a transition matrix.
 transientvisits.m computes the expected number of visits to transient states. 
 
Gambler's wealth

 gambler.m sets up and displays the transition matrix for Gambler's wealth. Output
 gambler_dist.m computes the distribution of Gambler's wealth after n hands. Output
 gambler_length.m computes the distribution of the length of the game. Output
 gambler_visits.m displays the expected number of visits to transient states matrix W, the expected length of the game, and the probability of hitting matrix U. Output
 gambling.m generates one outcome of Gambler's wealth, with an algorithm specifically designed for this problem.
 gambling_outcomes.m generates several outcomes of Gambler's wealth. 
 
Simulation of Markov chains

 rando.m generates a random variable in {1, 2, ..., n} given a distribution vector.
 chain.m simulates a Markov chain on {1, 2, ..., n} given an initial distribution and a transition matrix. It uses rando.m. It is a good idea to use a different .m file to set up mu and P, then run chain.m or manychains.m
 manychains.m generates multiple simulations using chain.m. Output
 generalchain.m simulates a Markov chain with a general state space given an initial distribution and a transition matrix. Output
 manygeneralchains.m generates multiple simulations using generalchain.m. 
 
 Queueing models

 queue.m sets up matrices for a simple discrete queueing model. It uses graph_matrix.m, found above. Output 
 
 Component failure and replacement

 component.m sets up matrices to model the age of a component with possible replacement
 replacement_policies.m uses component.m to compare possible replacement policies
 component_examples.m sets up three examples of life length distributions and computes the optimal scheduled replacement times. Output 
 
 Poisson processes

 poisson.m simulates a Poisson process.
 manypoisson.m generates many outcomes of the Poisson process using poisson.m. Output
 poisson_probs.m displays the probability distribution of the Poisson process as a function of time. Output
 poisson_arrivals.m simulates the arrival times of a homogeneous Poisson process.
 manypoisson.m generates many outcomes of the Poisson process using poisson_arrivals.m.
 bid.m simulates Poisson arrivals of iid bids for an item.
 bid_display.m displays the arrivals and values of bids.
 bid_return.m calculates the expected return on a bidding strategy. 
 
 Markov processes

 process.m simulates a general Markov process on {1, 2, ... n} given an initial distribution, sojourn parameters, and a transition matrix.
 manyprocesses.m generates multiple simulations using process.m. Output for process_ex_1.m
 distribution.m computes and graphs the distribution of a Markov process over time Output for process_ex_1.m
 process_ex_1.m sets up parameters for a three-state Markov process.
 process_ex_2.m determines the parameters lambda and Q for a Markov chain, which can then be used to determine a Markov process.
 process_ex_bd.m sets up parameters for a simple birth/death process.
 repair.m sets up matrices for a model of the number of machines working and the number in repair. Output 
 
 The Yule process and population modeling

 yule.m simulates the Yule process (a pure birth process)
 manyyule.m generates many outcomes of the Yule process using yule.m. Output
 process_ex_yule.m sets up parameters for a Yule process 
