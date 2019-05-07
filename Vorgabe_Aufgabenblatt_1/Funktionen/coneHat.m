function [ B ] = coneHat( A )
% Get biggest dimension of A
n = length(A);
% Middle is at [n/2, n/2]
% Set up solution variable
B = zeros(n,n);

% Problem can be solved via calculating pythagoras of the corresponding row
% and column deltas to middle
for i=1:n
    for j=1:n
       if sqrt((j-n/2)^2 + (i-n/2)^2) > sqrt((n / 3)^2)
           B(i,j) = 0;
       else
           B(i,j) = sqrt((j-n/2)^2 + (i-n/2)^2);
       end
    end
end
end

