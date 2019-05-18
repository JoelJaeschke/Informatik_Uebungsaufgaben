function [ adjacencyMatrix ] = deleteEdge( adjacencyMatrix, vertexPositions )
point1 = selectVertex(vertexPositions);
point2 = selectVertex(vertexPositions);
adjacencyMatrix(point1,point2) = 0;
adjacencyMatrix(point2,point1) = 0;
end