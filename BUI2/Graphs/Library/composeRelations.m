function [ T ] = composeRelations(R,S)
    [n,m] = size(R);
    T = zeros(n,m);
    for i=1:n
        for j=1:m
            if sum(and(R(i,:), transpose(S(:,j)))) >= 1
                T(i,j) = 1;
            else
                T(i,j) = 0;
            end
        end
    end
end