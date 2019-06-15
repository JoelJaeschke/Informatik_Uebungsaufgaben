clc;
clear all;
close all;

%% Pfade zuruecksetzen
restoredefaultpath;
addpath( genpath( '../Library' ) );

%% Datenstruktur anlegen

adjacencyMatrix = [];
vertexPositions = [];
weightMatrix = [];

%% Endlosschleife fuer Benutzerabfrage

while true
    
    % akutellen Graph visualisieren
    plotGraph( adjacencyMatrix, vertexPositions, weightMatrix );
    
    % Benutzereingabe abfragen
    option = input('Option waehlen: ','s');
    
    if option == 'v' % neuen Vertex hinzufuegen
        
        [ adjacencyMatrix, vertexPositions, weightMatrix ] = addVertex( adjacencyMatrix, vertexPositions, weightMatrix );
        
    elseif option == 'e' % neue Kante hinzufuegen
        
        [ adjacencyMatrix, weightMatrix] = addEdge( adjacencyMatrix, vertexPositions, weightMatrix );
        
    elseif option == 'dv' % Vertex loeschen
        
        [ adjacencyMatrix, vertexPositions, weightMatrix ] = deleteVertex( adjacencyMatrix, vertexPositions, weightMatrix );
        
    elseif option == 'de' % Kante loeschen
        
        [ adjacencyMatrix, weightMatrix ] = deleteEdge( adjacencyMatrix, vertexPositions, weightMatrix );
        
    elseif option == 'a' % display adjacencyMatrix
        
        disp('Adjacenz Matrix:');
        disp( adjacencyMatrix );

    elseif option == 'w' % display weightMatrix
        
        disp('Weight Matrix:');
        disp( weightMatrix );
        
    elseif option == 's' % Graph speichern
        
        save adjacencyMatrix;
        save vertexPositions;
        save weightMatrix;
        
    elseif option == 'l' % Graph laden
        
        load adjacencyMatrix;
        load vertexPositions;
        load weightMatrix;
        
    elseif option == 'r' % Erreichbarkeit pruefen
        
        reachableVertices = whomCanIReach( adjacencyMatrix, vertexPositions );
        
        disp( reachableVertices );
        
        fprintf('Weiter mit beliebiger Taste ... \n');
        pause;        
        
    elseif option == 'p' % Verteilung im Graphen pruefen
        
        affectedVertices = determinePropagationInGraph( adjacencyMatrix, vertexPositions );
        
        disp( affectedVertices );
        
        fprintf('Weiter mit beliebiger Taste ... \n');
        pause;

     elseif option == 'd' % Kürzester Weg
        
        [shortestPathLength, shortestPath] = findShortestPath(adjacencyMatrix, vertexPositions, weightMatrix);

        disp( 'Kürzester Weg' );
        disp( shortestPath );

        disp( 'Länge des Kürzesten Weges' );
        disp( shortestPathLength );

        fprintf('Weiter mit beliebiger Taste ... \n');
        pause;
        
    elseif option == 'q' % Programm beenden
        break;
        
    else
        warning('Ungueltige Option!')
    end
    
end
