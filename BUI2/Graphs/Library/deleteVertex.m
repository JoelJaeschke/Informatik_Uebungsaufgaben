function [ adjacencyMatrix, vertexPositions ] = deleteVertex( adjacencyMatrix, vertexPositions )

point = selectVertex(vertexPositions);
if point == 1
    vertexPositions = vertexPositions(2:length(vertexPositions));
else
    vertexPositions = [ vertexPositions(1:point-1,:);vertexPositions(point+1:length(vertexPositions),:)];
end
adjacencyTmp = adjacencyMatrix;
adjacencyTmp(point,:) = [];
adjacencyTmp(:,point) = [];
adjacencyMatrix = adjacencyTmp;
end