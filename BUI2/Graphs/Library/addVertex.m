function [ adjacencyMatrix, vertexPositions ] = addVertex(adjacencyMatrix, vertexPositions)
[x,y] = ginput(1);
vertexPositions = [vertexPositions;[x,y]];
size = length(adjacencyMatrix);
adjacenceyTmp = zeros(size+1);
adjacenceyTmp(1:size,1:size) = adjacencyMatrix;
adjacencyMatrix = adjacenceyTmp;
end