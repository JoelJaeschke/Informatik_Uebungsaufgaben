function [ C, s ] = computeTransitiveClosure( R )

% Fange mit der eigentlichen Relation an ... 
previousC = R;

% ... und berechne fuer jede moegliche Schrittweite ... 
for i = 2:size(R,1)
    
    % ... die jeweilige Potenz (T = R^i) ... 
    T = selfComposeRelation( R, i );
    
    % ... und verbinde diese mit der vorigen Potenz.
    C = or( previousC, T );
    
    % Falls sich nichts geaendert hat, sind wir fertig ... 
    if C == previousC
        
        s = i; % ... und i ist unser Stabilitaetsindex ... 
        break; % ... und wir koennen hier aufhoeren.
    end
    
    % sonst machen wir mit dem jetztigen Ergebnis weiter.
    previousC = C;
end

end

