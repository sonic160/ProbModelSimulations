% showmatrix.m displays a matrix, no matter how wide it is.  It can be edited to change the number of decimal places shown.

function [void] = showmatrix(M)
s=size(M);
for j=1:s(1),
  for k=1:s(2),
    fprintf(' %4.4f ', M(j,k));    % print with 4 decimal places
  end
  fprintf('\n');                   % character return
end
