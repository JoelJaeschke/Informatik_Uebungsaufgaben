%% Lineare Formfunktionen 
function N = linearShapes(t)
%% TODO
    lowerBound = min(t);
    upperBound = max(t);
    if lowerBound == 0 && upperBound == 1
        N = [1-t;t];
    else
        N = [0.5*(1-t);0.5*(1+t)];
    end
end