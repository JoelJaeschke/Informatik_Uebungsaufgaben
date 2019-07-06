%% Stellt die Formfunktionen graphisch dar 
function  plotShapes(Points)
    figure 
    hold on
    grid on

    n = size( Points, 2 );
    p = n-1;
    nEvalPoints = 100; % Anzahl der Auswertungspunkte
    t = linspace(-1,1,nEvalPoints);
    N = nonlinearShapes(t,p);
    
    color = hsv(n);
    % Schleife über alle Formfunktionen
    for i=1:n
        plot(t,N(i,:), 'Color', color(i,:), 'LineWidth',1.5);
    end
    
    
end

