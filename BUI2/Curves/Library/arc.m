function [x_arc, y_arc] = arc(M,r,theta1,theta2,numberOfEvaluationPoints)
    evalSpace = linspace(theta1,theta2,numberOfEvaluationPoints);
    x_arc = zeros(1,numberOfEvaluationPoints);
    y_arc = zeros(1,numberOfEvaluationPoints);
    
    for i=1:numberOfEvaluationPoints
        x_arc(i) = M(1) + r*cos(evalSpace(i));
        y_arc(i) = M(2) + r*sin(evalSpace(i));
    end
end
