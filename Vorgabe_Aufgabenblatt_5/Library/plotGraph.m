function [ ] = plotGraph( adjacencyMatrix, vertexPositions, weightMatrix )

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

            middle = (endPosition + startPosition) / 2;
            
            arrow(startPosition, endPosition );
            text(middle(1),middle(2),num2str(weightMatrix(i,j)),'color','r');
            
        end
    end
end

%% Zeichne Vertices

for i = 1:size(vertexPositions,1)    
    plotVertex( vertexPositions, i, 'w' );
end

end

