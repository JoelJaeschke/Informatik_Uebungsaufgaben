function [ T ] = rotateAboutOrigin( angle, previousTransformation )
    rotationMatrix = [
            cos(angle),sin(angle),0;
            -sin(angle),cos(angle),0;
            0,0,1];
    if nargin == 2
        T = previousTransformation * rotationMatrix;
    else
        T = rotationMatrix;
    end
end