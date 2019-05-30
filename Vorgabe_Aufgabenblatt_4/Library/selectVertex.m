function [ vertexId ] = selectVertex( vertexPositions )

%% Zuerst: Position waehlen

[x, y] = ginput(1);

%% dann ... 

% ... das Minimum mit dem Abstand zu ersten Knoten initialisieren ...
minDistance = norm( vertexPositions( 1, : ) - [ x, y ] );

% ... und das Ergebnis (vorlaeufig) auf 1 setzen
vertexId = 1;

%% und dann ...

% ueber alle verbleibenden Knoten laufen ...
for i = 2:size( vertexPositions, 1 )
    
    % ... deren Abstand berechnen ...
    d = norm( vertexPositions(i,:) - [ x, y ] );
    
    % ... und schauen ob dieser kleiner ist als das momentane Minimum ... 
    if( d < minDistance )
        
        % In diesem Fall das Minimum und den Rueckgabenwert aktualisieren
        minDistance = d;        
        vertexId = i;
    end
end

%% Zu guter letzt ...

% den Knoten noch gelb markieren
plotVertex( vertexPositions, vertexId, 'y' );


end

