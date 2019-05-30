function [ adjacencyMatrix, vertexPositions ] = deleteVertex( adjacencyMatrix, vertexPositions )

%% Schritt 1: Zu loeschenden Knoten ermitteln

vertexIdToDelete = selectVertex( vertexPositions );

%% Schritt 2: Entsprechenden Eintrag aus Geometrie und Topologie loeschen

% Geometrie
vertexPositions(vertexIdToDelete,:) = [];

% Topologie
adjacencyMatrix(vertexIdToDelete,:) = [];
adjacencyMatrix(:,vertexIdToDelete) = [];

end

