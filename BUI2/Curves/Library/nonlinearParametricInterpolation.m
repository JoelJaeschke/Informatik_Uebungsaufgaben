%% Nichtlineare Parametrische Interpolation 
function [nX, nY] = nonlinearParametricInterpolation( Points )
    % Points    ... Interpolationspunkte
    % nX        ... x-Koordinaten der Auswertepunkte
    % nY        ... y-Koordinaten der Auswertepunkte
    

%% TODO
    n = length(Points);
    N = nonlinearShapes(linspace(-1,1),n-1);
    pointsCalc = N'*Points';
    nX = pointsCalc(:,1);
    nY = pointsCalc(:,2);
end
