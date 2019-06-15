function [ reachableVertices ] = whomCanIReach( adjacencyMatrix, vertexPositions  )

%% Schritt 1: Startpunkt bestimmen 

idOfStart = selectVertex( vertexPositions );

%% Schritt 2: Schrittweite bestimmen

numberOfSteps = input('Anzahl der Schritte: ');

%% Schritt 3: Realtion Potenzieren

T = selfComposeRelation( adjacencyMatrix, numberOfSteps );

%% Schritt 4: Entsprechende ZEILE der T Matrix nach 1 durchsuchen  

reachableVertices = [];

reachableVertices = nonzeros(T(idOfStart,:));

for j = 1:size( adjacencyMatrix, 2 );
    
    if T( idOfStart, j ) == 1
        
        reachableVertices(end+1) = j;
        plotVertex( vertexPositions, j, 'g' );
    end
end







end

