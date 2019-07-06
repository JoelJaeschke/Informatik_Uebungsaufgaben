%% Benutzereingabe der Interpolationspunkte 
function [ interpolationPoints ] = getInterpolationPoints()
%% TODO
    interpolationPoints = [];
    while 1
        [x,y,button] = ginput(1);
        scatter(x,y);
        if button == 3
            break;
        end
        interpolationPoints = [interpolationPoints,[x;y]];
    end
    scatter(interpolationPoints(1,:),interpolationPoints(2,:));
end
