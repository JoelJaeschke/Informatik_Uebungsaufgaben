function [ T ] = rotate( angle, centerOfRotation, previousTransformation )
    % 1. Move to origin
    originMove = translate(-centerOfRotation(1), -centerOfRotation(2));
    % 2. Rotate (angle) degrees
    rotation = rotateAboutOrigin(deg2rad(angle), originMove);
    % 3. Move back to (centerOfRotation)
    backToStart = translate(centerOfRotation(1), centerOfRotation(2), rotation);
    
    if nargin == 3
        T = previousTransformation * backToStart;
    else
        T = backToStart;
    end
end