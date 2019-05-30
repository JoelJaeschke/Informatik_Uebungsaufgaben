function [ adjacencyMatrix, vertexPositions ] = addVertex( adjacencyMatrix, vertexPositions )

% Position durch Benutzer festlegenlassen
[x, y] = ginput(1);

% Knoten topologisch speichern: Adjazenzmatrix um einen Eintrag erweitern
adjacencyMatrix(end+1, end+1) = 0;

% Knoten geometrisch speichern: Position in Liste eintragen
vertexPositions(end+1, :) = [ x, y ];

end

