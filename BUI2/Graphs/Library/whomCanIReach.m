function [ reachableVertices ] = whomCanIReach( adjacencyMatrix, vertexPositions)
    vertexId = selectVertex(vertexPositions);
    schritte = input("Geben sie die Anzahl der Schritte an: ");
    
    adjacencyMatrix = selfComposeRelation(adjacencyMatrix, schritte);
    reachableVertices = adjacencyMatrix(vertexId,:);
    
    for i=1:length(adjacencyMatrix(vertexId,:))
        if adjacencyMatrix(vertexId,i) == 1
            plotVertex(vertexPositions, i, "green");
        end
    end
end