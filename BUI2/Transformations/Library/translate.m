function [ T ] = translate( dx, dy, previousTransformation )
    translateMatrix = [
            1,0,0;
            0,1,0;
            dx,dy,1];
    if nargin == 3
        T = previousTransformation * translateMatrix;
    else
        T = translateMatrix;
    end
end