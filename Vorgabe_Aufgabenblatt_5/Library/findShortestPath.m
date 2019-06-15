function [shortestPathLength, shortestPath] = findShortestPath( adjacencyMatrix, vertexPositions ,weightMatrix  )

%% Schritt 1: Startpunkt und Zielpunkt bestimmen



%% Schritt 2: Erreichbarkeit überprüfen



%% Schritt 2: Kürzesten Weg bestimmen



%% Schritt 3: Kürzesten Weg Plotten

for i = 1:length( shortestPath)-1;

    plotVertex( vertexPositions, shortestPath(i), 'g' );
    
     startPosition = vertexPositions(shortestPath(i),:);
     endPosition = vertexPositions(shortestPath(i+1),:);
    
    arrow(startPosition, endPosition,'g' );
    
end

plotVertex( vertexPositions, shortestPath(end), 'g' );

end
