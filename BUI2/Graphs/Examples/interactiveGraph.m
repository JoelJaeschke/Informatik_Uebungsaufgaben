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
        [adjacencyMatrix, vertexPositions] = addVertex(adjacencyMatrix, vertexPositions);
    elseif option == "s"
        save("savepoint");
    elseif option == "e"
        adjacencyMatrix = addEdge(adjacencyMatrix, vertexPositions);
    elseif option == "l"
        load("savepoint");
    elseif option == "a"
        disp(adjacencyMatrix);
    elseif option == "dv"
        [adjacencyMatrix, vertexPositions] = deleteVertex(adjacencyMatrix, vertexPositions);
    elseif option == "de"
        adjacencyMatrix = deleteEdge(adjacencyMatrix, vertexPositions);
    elseif option == 'q' % Programm beenden
        break;
    else
        warning('Ungueltige Option!')
    end
end
