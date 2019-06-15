function [  ] = plotVertex( vertexPositions, idOfVertexToHighlight, color )

x = vertexPositions(idOfVertexToHighlight,1);
y = vertexPositions(idOfVertexToHighlight,2);

plot( x, y, 'ko','markersize', 13, 'MarkerFaceColor', color);

text( x, y, num2str(idOfVertexToHighlight), ...
    'HorizontalAlignment','center', 'VerticalAlignment','middle' );


end

