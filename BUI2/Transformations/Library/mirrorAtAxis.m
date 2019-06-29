function [ T ] = mirrorAtAxis(pointsOfMirrorAxis, previousTransformation)
    firstPoint = pointsOfMirrorAxis(1,:);
    secondPoint = pointsOfMirrorAxis(2,:);
    % Get point where axis crosses y-axis
    dy = firstPoint(2) - ((secondPoint(2)-firstPoint(2)) / (secondPoint(1)-firstPoint(1))) * firstPoint(1);
    
    % Get the angle between axis and x-axis (sin)
    da = atan((secondPoint(2)-firstPoint(2))/(secondPoint(1)-firstPoint(1)));
    
    % Move axis to origin
    moveAxisToOrigin = translate(0,-dy);
    % Rotate towards x-axis
    rotateTowardsOrigin = rotateAboutOrigin(-da, moveAxisToOrigin);
    % Mirror at x-axis
    mirrorAtX = mirrorX(rotateTowardsOrigin);
    % Rotate x-axis back
    rotateAwayFromOrigin = rotateAboutOrigin(da, mirrorAtX);
    % Move back to start
    moveToStart = translate(0, dy, rotateAwayFromOrigin);
    
    if nargin == 2
        T = previousTransformation * moveToStart;
    else
        T = moveToStart;
    end
end
