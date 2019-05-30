function [ ] = plotGraph( adjacencyMatrix, vertexPositions )

%% reset figure

clf(gcf);
I = imread('map.png');
image(I);
axis equal;
axis tight;
hold on;

%% Zeichne Kanten

for i = 1:size( adjacencyMatrix, 1 )
    for j = 1:size( adjacencyMatrix, 2 )
        
        if adjacencyMatrix(i,j) == 1
            
            startPosition = vertexPositions(i,:);
            endPosition = vertexPositions(j,:);
            
            arrow(startPosition, endPosition );
        end
    end
end

%% Zeichne Vertices

for i = 1:size(vertexPositions,1)    
    plotVertex( vertexPositions, i, 'w' );
end

end

