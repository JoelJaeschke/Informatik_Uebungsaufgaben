addpath("../Library");

w = [
    inf,2,inf,inf,7,1;
    2,inf,4,6,inf,5;
    inf,4,inf,1,inf,inf;
    inf,6,1,inf,2,4;
    7,inf,inf,2,inf,5;
    1,5,inf,4,5,inf
    ];

[shortestPathLength, shortestPath] = dijkstra(w, 2, 5);

assert(shortestPathLength == 7, "Path length is wrong");
assert(isequal(shortestPath, [2,3,4,5]), "Shortest path is wrong");

fprintf("Everything works, good to go :)\n");