function [ adjacencyMatrix, weightMatrix ] = addEdge( adjacencyMatrix, vertexPositions, weightMatrix )

%% Schritt 1: Zu verbindede Knoten ermitteln

% Dazu fuer jeden der zwei Knoten ...
for i = 1:2
    
    % ... den Benuzter eine Position auswahlen lassen ... 
    vertexId(i) = selectVertex( vertexPositions );    
end

%% Schritt 2: Die Adjazenzmatrix und Gewichtsmatrix erweitern

% Hierzu in der entsprechenden Zeile und Spalte der ausgewaehlten Knoten
% eine 1 bzw. das Kantengewicht eintragen
adjacencyMatrix( vertexId(1), vertexId(2) ) = 1;

w = input('Bitte Kantengewicht angeben [0 - inf]'); 

weightMatrix( vertexId(1), vertexId(2) ) = w;

%% Schritt 3: Ggf. noch die entgegensetzte Kante eintragen

% Hierzu frage ob die Kante gerichtet ist ... 
choice = input( 'Soll die Kante gerichtet sein? [y,n] ', 's' );

% ... und falls nicht ...
if choice == 'n'
    
    % ... an der entsprechend transponierten Stelle einen eintrag machen
    adjacencyMatrix( vertexId(2), vertexId(1) ) = 1;
    weightMatrix( vertexId(2), vertexId(1) ) = w;
end

end

