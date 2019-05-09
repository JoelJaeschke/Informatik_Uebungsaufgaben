
%% Setup
% Alle Fenster schließen 
% TODO:
close all;
clear;
clc;
% Pfad hinzufügen
% TODO:
addpath(genpath("Funktionen"));
%% Figure
figure('units','normalized','outerposition',[0 0 1 1])
hold all
%% Taylorreihe Exponentialfunktion
n = 4;
a = 0;
subplot(2,2,1)
title('Taylorreihe Exponentialfunktion')
hold all
% TODO: Funktion aufrufen
taylorExponential(n,a);
%% Taylorreihe Sinus
n = 4;
a = pi/4;
subplot(2,2,2)
title('Taylorreihe Sinus')
hold all
% TODO: Funktion aufrufen
taylorSinus(n,a);
%% Kegelhut
A = zeros(200);
% TODO: Funktion aufrufen
B = coneHat(A);

subplot(2,2,3)
title('Kegelhut')
view(-45,30)
hold all
axis equal
surf(B,'EdgeColor','none','LineStyle','none','FaceLighting','phong')
colormap(autumn)
camlight right
%% Fibonacci
nTimeSteps = 25;

% Vektoren
x = 1:nTimeSteps;
y1 = zeros(nTimeSteps,1);
y2 = zeros(nTimeSteps,1);

% nicht rekusiv
for i=1:nTimeSteps
    tic;
    % TODO: Funktion aufrufen
    Fibonacci(20);
    y1(i) = toc;
end

% rekursiv
for i=1:nTimeSteps
    tic;
    % TODO: Funktion aufrufen
    recursiveFibonacci(20);
    y2(i) = toc;
end

% Plotten
subplot(2,2,4)
title('Laufzeiten Fibonacci Zahlen')
hold all
% TODO: Ergebnis visualisieren: plot( ...., ...., .... ,....)
plot(x,y1,x,y2)
legend('nicht rekursiv','rekursiv')

