function [ T ] = scale( scaleX, scaleY, previousTransformation )
    scaleMatrix = [
            scaleX,0,0;
            0,scaleY,0;
            0,0,1];
    if nargin == 3
        T = previousTransformation * scaleMatrix;
    else
        T = scaleMatrix;
    end
end