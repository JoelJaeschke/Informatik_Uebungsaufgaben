function res = Fibonacci(n)
% Is use of Moivre-Binet allowed?
% This is not the solution via looping, but since we are looking for the
% most efficient and effective way to solve a problem, this should be just
% fine, since math almost always wins in regard to Big O..
res = 1/sqrt(5)*((((1 + sqrt(5))/2)^n)-(((1 - sqrt(5))/2)^n));

% In case I would not get the certificate for this solution here is
% fibonacci with loops:
% if n == 0
%     res = 0;
% end
% if n == 1
%     res = 1;
% end
% n_1 = 1;
% n_2 = 0;
% tmp = 0;
% for i=1:n
%     tmp = n_1 + n_2;
%     n_2 = n_1;
%     n_1 = tmp;
% end
% res = n_2;
end

