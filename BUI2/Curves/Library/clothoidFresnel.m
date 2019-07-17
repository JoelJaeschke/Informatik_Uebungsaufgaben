function [x_f, y_f] = clothoidFresnel(a,length,numberOfEvaluationPoints)
    tEnd = length/(a*sqrt(pi));
    evalSpace = linspace(0,tEnd,numberOfEvaluationPoints);
    x_f = zeros(1,numberOfEvaluationPoints);
    y_f = zeros(1,numberOfEvaluationPoints);
    for i=2:numberOfEvaluationPoints
        x_f(i) = x_f(i-1) + a*sqrt(pi)*cos((pi/2)*evalSpace(i-1).^2)*(evalSpace(i)-evalSpace(i-1));
        y_f(i) = y_f(i-1) + a*sqrt(pi)*sin((pi/2)*evalSpace(i-1).^2)*(evalSpace(i)-evalSpace(i-1));
    end
end