%% Lineare parametrische Interpolation 
function [pX, pY] = linearParametricInterpolation( Points )
    % Points    ... Interpolationspunkte
    % pX        ... x-Koordinaten der Auswertepunkte
    % pY        ... y-Koordinaten der Auswertepunkte
    
%% TODO
    t = [-1,1];
    N = linearShapes(t);
    size = length(Points);
    pX = [];
    pY = [];
    
    for i=1:length(Points)-1
        pX = [pX;N(1)*Points(1,i)+N(2)*Points(1,i+1)];
        pY = [pY;N(1)*Points(2,i)+N(2)*Points(2,i+1)];
    end
    pX = [pX;Points(1,length(Points))];
    pY = [pY;Points(2,length(Points))];
end

