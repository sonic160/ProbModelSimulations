% transientvisits.m computes the expected number of visits to j starting at i
% it only really works for chains with a small number of recurrent states

function [R] = potential(P)

R = eye(size(P));   % an identity matrix
A = P;

while max(max(A)) > 0.0000001,
  R = R + A;
  A = A * P;
end
