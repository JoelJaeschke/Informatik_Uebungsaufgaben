function [shortestPathLength, shortestPath] = findShortestPath( adjacencyMatrix, vertexPositions ,weightMatrix  )

%% Schritt 1: Startpunkt und Zielpunkt bestimmen
fprintf("W‰hlen sie die Startpositions aus\n");
start = selectVertex(vertexPositions);
fprintf("W‰hlen sie das Ziel aus\n");
target = selectVertex(vertexPositions);

%% Schritt 2: Erreichbarkeit √ºberpr√ºfen
reachableVertices = computeTransitiveClosure(adjacencyMatrix);
if reachableVertices(target,start) == 1
    fprintf("Der Punkt ist von der Gew‰hlten Startposition nicht erreichbar.\n");
    shortestPathLength = -1;
    shortestPath = [-1];
    return;
end


%% Schritt 3: K√ºrzesten Weg bestimmen
[shortestPathLength, shortestPath] = dijkstra(weightMatrix, start, target);


%% Schritt 4: K√ºrzesten Weg Plotten

for i = 1:length( shortestPath)-1;

    plotVertex( vertexPositions, shortestPath(i), 'g' );
    
     startPosition = vertexPositions(shortestPath(i),:);
     endPosition = vertexPositions(shortestPath(i+1),:);
    
    arrow(startPosition, endPosition,'g' );
    
end

plotVertex( vertexPositions, shortestPath(end), 'g' );

end
