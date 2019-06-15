function [ affectedVertices ] = determinePropagationInGraph( adjacencyMatrix, vertexPositions )

%% Schritt 1: Berechne transitive Huelle

C = computeTransitiveClosure(adjacencyMatrix);


%% Schritt 2: Bestimme Startpunkt
vertexId = selectVertex( vertexPositions );

%% Schritt 3: Bestimme ob vorwaerts oder rueckwaerts gesucht werden soll

direction = input('Richtungswahl: [v: Vorwaerts / r: Rueckwaerts] ', 's');


if direction == 'v'
    
    % Stromabwaerts ergeben sich die Kandidaten aus der ZEILE von C
    candidates = C( vertexId, : );    
    
elseif direction == 'r'
    
    % Stromaufwaerts ergeben sich die Kandidaten aus der SPALTE von C
    candidates = C( :, vertexId );        
else
    error('Ungueltiger Input!');
end


%% Schritt 4: Suche alle tatsaechlich betroffenen Knoten

affectedVertices = [];

for i = 1:length(candidates)

    % bei denen ist der Eintrag 1
    if candidates(i) == 1
        
        affectedVertices(end+1) = i;        
        plotVertex( vertexPositions, i, 'g' );
    end
    
end

end

