function [ adjacencyMatrix ] = addEdge( adjacencyMatrix, vertexPositions )
point1 = selectVertex( vertexPositions );
point2 = selectVertex( vertexPositions );
isDirected = input("Is the edge directed? [yes/no]");
if isDirected == "yes"
    adjacencyMatrix(point1, point2) = 1;
    return;
else
   adjacencyMatrix(point1, point2) = 1;
   adjacencyMatrix(point2, point1) = 1;
   return;
end
end