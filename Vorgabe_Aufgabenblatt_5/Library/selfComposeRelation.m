function [ T ] = selfComposeRelation( R, orderOfComposure )

% die erste Potenz ist die Relation selber (R^1 = R)
T = R;

% fuer alle weiteren Potzenzen ... 
for i = 2:orderOfComposure
    
    % ... jeweils das vorige Ergebnis erneut potenzieren (R^i = R^(i-1) * R)
    T = composeRelations(T,R);    
end

end

