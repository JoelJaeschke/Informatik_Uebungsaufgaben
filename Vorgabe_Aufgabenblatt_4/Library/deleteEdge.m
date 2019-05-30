function [ adjacencyMatrix ] = deleteEdge( adjacencyMatrix, vertexPositions )

%% Schritt 1: Zu loeschenden Kante ermitteln

for i = 1:2
    vertexId(i) = selectVertex( vertexPositions );    
end

%% Schritt 2: Entsprechenden Eintrag aus Topologie loeschen

adjacencyMatrix( vertexId(1), vertexId(2) ) = 0;

end

