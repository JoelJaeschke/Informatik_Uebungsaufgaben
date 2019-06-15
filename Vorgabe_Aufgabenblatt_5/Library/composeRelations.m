function [ T ] = composeRelations( R, S )

% Lege Zielmatrix an (sonst wirds langsam) ... 
T = zeros( size( R, 1 ),size( S, 2 ) );

% ... und dann laufe ueber alle Zeilen in R ... 
for i = 1:size( R, 1 )
    
    % ... und alle Spalten in S ...
    for j = 1:size( S, 2 )
        
        % ... und alle Spalten in R bzw. Zeilen in S ...
        for k = 1:size( R, 2 )
            
            % ... und ueberpruefe ob beide Werte 1 sind
            if R(i,k) == 1 && S(k,j) == 1
                T(i,j) = 1;
                break; % dann koenne wir hier aufhoeren
            end            
        end
    end
end

%% Preisfrage: was ist die (worst case) Komplexität diese Funktion?

end

