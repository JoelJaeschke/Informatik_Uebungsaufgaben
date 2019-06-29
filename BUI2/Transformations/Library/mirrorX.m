function [ T ] = mirrorX( previousTransformation ) 
    xRotateMatrix = [
            1,0,0;
            0,-1,0;
            0,0,1];
    if nargin == 1
        T = previousTransformation * xRotateMatrix;
    else
        T = xRotateMatrix;
    end
end