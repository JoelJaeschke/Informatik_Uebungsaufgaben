function [x_s,y_s] = clothoidSeries(a,length,numberOfEvaluationPoints)
    tEnd = length/a*sqrt(pi);
    evalSpace = linspace(0,tEnd, numberOfEvaluationPoints);
    
    for i=1:numberOfEvaluationPoints
        evalSpace(i)=(tEnd/(numberOfEvaluationPoints-1))*(i-1);
    end
    
    x_s = zeros(1,numberOfEvaluationPoints);
    y_s = zeros(1,numberOfEvaluationPoints);
        
    for i=2:numberOfEvaluationPoints
        t = evalSpace(i);
        xFactor = 0;
        yFactor = 0;
        for j=1:5
            xFactor = xFactor + ((-1)^j)*(t^(4*j+1))*(1/factorial(2*j)*(4*j+1));
            yFactor = yFactor + ((-1)^j)*(t^(4*j+3))*(1/factorial(2*j + 1)*(4*j+3));
        end
        x_s(i) = a*sqrt(2)*xFactor;
        y_s(i) = a*sqrt(2)*yFactor;
    end
end