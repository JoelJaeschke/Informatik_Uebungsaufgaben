function [ affectedVertices ] = determinePropagationInGraph( adjacencyMatrix, vertexPositions)
    transitiveHull = computeTransitiveClosure(adjacencyMatrix);
    vertexId = selectVertex(vertexPositions);
    direction = input("Soll der Graph vorwärts oder rückwärts durchsucht werden? [v/r] ");
    if strcmp(direction, "v")
        for i=1:length(transitiveHull)
            if transitiveHull(vertexId,i) == 1
                plotVertex(vertexPositions, i, "red")
            end
        end
        affectedVertices = transitiveHull(vertexId,:);
    else
        for i=1:length(transitiveHull)
            if transitiveHull(i,vertexId) == 1
                plotVertex(vertexPositions, i, "red")
            end
        end
        affectedVertices = transitiveHull(:,vertexId);
    end
end