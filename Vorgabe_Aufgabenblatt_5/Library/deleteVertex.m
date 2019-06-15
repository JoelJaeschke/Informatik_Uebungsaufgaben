function [ adjacencyMatrix, vertexPositions, weightMatrix ] = deleteVertex( adjacencyMatrix, vertexPositions, weightMatrix )

%% Schritt 1: Zu loeschenden Knoten ermitteln

vertexIdToDelete = selectVertex( vertexPositions );

%% Schritt 2: Entsprechenden Eintrag aus Geometrie und Topologie loeschen

% Geometrie
vertexPositions(vertexIdToDelete,:) = [];

% Topologie
adjacencyMatrix(vertexIdToDelete,:) = [];
adjacencyMatrix(:,vertexIdToDelete) = [];
weightMatrix(vertexIdToDelete,:) = [];
weightMatrix(:,vertexIdToDelete) = [];

end

