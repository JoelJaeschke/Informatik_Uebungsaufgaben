function [ transformedVertices ] = transformPoints( vertices, T )
    [rows, ~] = size(vertices);
    homogeneousCoordinates = [vertices, ones(rows, 1)];
    transformation = homogeneousCoordinates * T;
    transformedVertices = transformation(:,1:2);
end