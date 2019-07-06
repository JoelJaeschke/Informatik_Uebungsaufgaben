%% (Nicht-)lineare Formfunktionen: Lagrange Polynome 
function N = nonlinearShapes( t,p )
    % t    ... Auswertepunkte/Parameterpunkte
    % p    ... Polynomgrad
    

%% TODO
    n = p + 1;
    r = linspace(-1,1,n);
    N = ones(n,length(t));

    for i=1:n
        for j=1:n
            if i ~= j
                N(i,:) = N(i,:) .* (t-r(j))/(r(i)-r(j));
            end
        end
    end
end

