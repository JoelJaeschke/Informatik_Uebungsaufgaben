function [ adjacencyMatrix ] = addEdge( adjacencyMatrix, vertexPositions )

%% Schritt 1: Zu verbindede Knoten ermitteln

% Dazu fuer jeden der zwei Knoten ...
for i = 1:2
    
    % ... den Benuzter eine Position auswahlen lassen ... 
    vertexId(i) = selectVertex( vertexPositions );    
end

%% Schritt 2: Die Adjazenzmatrix eweitern

% Hierzu in der entsprechenden Zeile und Spalte der ausgewaehlten Knoten
% eine 1 eintragen
adjacencyMatrix( vertexId(1), vertexId(2) ) = 1;

%% Schritt 3: Ggf. noch die entgegensetzte Kante eintragen

% Hierzu frage ob die Kante gerichtet ist ... 
choice = input( 'Soll die Kante gerichtet sein? [y,n] ', 's' );

% ... und falls nicht ...
if choice == 'n'
    
    % ... an der entsprechend transponierten Stelle einen eintrag machen
    adjacencyMatrix( vertexId(2), vertexId(1) ) = 1;
end

end

