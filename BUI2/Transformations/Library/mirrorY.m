function [ T ] = mirrorY( previousTransformation )
    yRotateMatrix = [
            -1,0,0;
            0,1,0;
            0,0,1];
    if nargin == 1
        T = previousTransformation * yRotateMatrix;
    else
        T = yRotateMatrix;
    end
end