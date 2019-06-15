%% arrow.m function
% Call: arrow([xStart, yStart], [xEnd, yEnd])
% Author: Benjamin Wassermann (TUM-CIE)
function arrow(P1,P2,color)

    if nargin < 3
      color = 'k';
    end
    
    x1 = P1(1);
    x2 = P2(1);
    
    y1 = P1(2);
    y2 = P2(2);

    plot([x1 x2],[y1 y2],color,'LineWidth', 2);

    lineVec = P2- P1;
    
    Pm = 0.85*lineVec + P1;
    
    normVec = [lineVec(2), -lineVec(1)];
    
    Pm1 = Pm + 0.1*normVec;
    Pm2 = Pm - 0.1*normVec;    
    
    plot([Pm1(1) x2],[Pm1(2) y2],color,'LineWidth', 2);
    plot([Pm2(1) x2],[Pm2(2) y2],color,'LineWidth', 2);
end
