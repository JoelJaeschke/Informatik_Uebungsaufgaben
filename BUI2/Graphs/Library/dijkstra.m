function [ shortestPathLength, shortestPath ] = dijkstra(w,s,g)
    visited = zeros(length(w),1);
    v = zeros(length(w),1);
    
    % Initialize delta
    delta = Inf(length(w),1);
    delta(s) = 0;
    
    while (1)
        % get smallest unvisited node
        node = findUnmarkedMin(delta, visited);
        % break if node is 0, means that there is no node left
        if (node == 0)
            break;
        end
        
        % append current node to visited nodes
        visited = [visited; node];
        
        % look at all the nodes connected to current node
        for edge=1:length(w)
            % if edge is connected
            if w(node, edge) ~= inf
                % check if (delta(edge) + w(edge,node)) < delta(edge) and
                % that we have not already visited the target node
                if ((delta(node) + w(node, edge)) < delta(edge) && ~ismember(edge, visited))
                    delta(edge) = delta(node) + w(node, edge);
                    v(edge) = node;
                end
            else
                % skip if theres no connection between two nodes
            end
        end
    end
    shortestPathLength = delta(g);
    shortestPath = generateShortestPath(v, g, s);
    
    % Steps through the predecessor matrix and appends it to path
    function [ path ] = generateShortestPath(v, target, start)
        currentNode = target;
        path = [currentNode];
        while (v(currentNode) ~= start)
            path = [path, v(currentNode)];
            currentNode = v(currentNode);
        end
        path = [path, start];
        % little hacky, but we generate the path from end to start
        path = fliplr(path);
    end
    
    % Check for 0 to have break condition for loop
    function [ node ] = findUnmarkedMin(delta, visited)
        minNode = 0;
        minDist = inf;
        % Go through vector by element
        for i=1:length(delta)
            % Check if node is already visited, if so skip
            % else, check whether distance at that node is smaller than
            % current minDist
            if (ismember(i, visited))
            else
                if (delta(i) < minDist)
                    minDist = delta(i);
                    minNode = i;
                end
            end
        end
        node = minNode;
    end
end
