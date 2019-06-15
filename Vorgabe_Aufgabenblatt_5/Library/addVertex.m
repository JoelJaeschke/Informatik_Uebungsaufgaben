function [ adjacencyMatrix, vertexPositions, weightMatrix ] = addVertex( adjacencyMatrix, vertexPositions, weightMatrix )

% Position durch Benutzer festlegenlassen
[x, y] = ginput(1);

% Knoten topologisch speichern: Adjazenzmatrix um einen Eintrag erweitern
adjacencyMatrix(end+1, end+1) = 0;
weightMatrix(end+1, :) = inf;
weightMatrix(:, end+1) = inf;


% Knoten geometrisch speichern: Position in Liste eintragen
vertexPositions(end+1, :) = [ x, y ];

end

