%% Interpolation - Skript 
close all

addpath(genpath('../Library'));

%% Einlesen der Interpolationspunkte
Points = getInterpolationPoints();

%% Aufruf der linearen parametrischen Polynominterpolation
[pX, pY] = linearParametricInterpolation(Points);

%% Aufruf der nichtlinearen parametrischen Polynominterpolation
[nX, nY] = nonlinearParametricInterpolation(Points);


%% Visualisierung
clf 
axis([-10 10 -10 10]);
hold on;
grid on;
plot(pX, pY, '+-r','DisplayName', 'linear parametric', 'LineWidth',1.5)
plot(nX, nY, 'Color', [0.4 0.8 0], 'DisplayName', 'parametric', 'LineWidth',1.5)
plot(Points(1,:),Points(2,:), 'o','LineWidth',2,'MarkerEdgeColor','k',...
    'MarkerFaceColor',[1 .7 0], 'DisplayName', 'Interpolation Points')  
legend('show')

%% Visualisierung Formfunktionen
plotShapes(Points);
