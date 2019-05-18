function [ vertexId ] = selectVertex( vertexPositions )
[x,y] = ginput(1);
distance = zeros(length(vertexPositions),1);
for i=1:length(vertexPositions)
    distance(i,:) = norm([x,y] - vertexPositions(i,:));
end
[~, i] = min(distance);
vertexId = i;
end