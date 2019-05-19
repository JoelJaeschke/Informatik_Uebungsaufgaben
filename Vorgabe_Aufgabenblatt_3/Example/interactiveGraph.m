clc;
clear all;
close all;

%% Pfade zuruecksetzen 
restoredefaultpath;
addpath( genpath( '../Library' ) );

%% Datenstruktur anlegen

adjacencyMatrix = [];
vertexPositions = [];

%% Endlosschleife fuer Benutzerabfrage

while true
    
    % akutellen Graph visualisieren
    plotGraph( adjacencyMatrix, vertexPositions );
    
    % Benutzereingabe abfragen
    option = input('Option waehlen: ','s');
    
    if option == 'v' % neuen Vertex hinzufuegen
        
        % Hier vervollstaendigen ... 

    elseif option == 'q' % Programm beenden
        break;
        
    else
        warning('Ungueltige Option!')
    end
    
end
