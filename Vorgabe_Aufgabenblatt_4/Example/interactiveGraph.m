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
        
        [ adjacencyMatrix, vertexPositions ] = addVertex( adjacencyMatrix, vertexPositions );
        
    elseif option == 'e' % neue Kante hinzufuegen
        
        [ adjacencyMatrix] = addEdge( adjacencyMatrix, vertexPositions );
        
    elseif strcmp(option, 'dv') % Vertex loeschen
        
        [ adjacencyMatrix, vertexPositions ] = deleteVertex( adjacencyMatrix, vertexPositions );
        
    elseif strcmp(option, 'de') % Kante loeschen
        
        [ adjacencyMatrix ] = deleteEdge( adjacencyMatrix, vertexPositions );        
    
    elseif option == 'a' % display adjacencyMatrix
        
        disp('Adjacenz Matrix:');
        disp( adjacencyMatrix );
        
    elseif option == 's' % Graph speichern
        
        save adjacencyMatrix;
        save vertexPositions;
        
    elseif option == 'l' % Graph laden
        
        load adjacencyMatrix;
        load vertexPositions;
        
    elseif option == 'q' % Programm beenden
        break;
        
    else
        warning('Ungueltige Option!')
    end
    
end
