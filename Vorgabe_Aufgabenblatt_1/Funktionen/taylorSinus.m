function  taylorSinus (N, a)
% Create value vector
funcVal =  zeros(1,4);
% Assign all values from 0 to 3rd derivative in value vector, after that it
% just keeps repeating
funcVal(1) = sin(a);
funcVal(2) = cos(a);
funcVal(3) = -sin(a);
funcVal(4) = -cos(a);

% Create x_space and y_space
x_space = linspace(a-pi, a+pi,100);
y_space = zeros(1,100);

% Plot stdlib sin function
plot(x_space, sin(x_space), "k", "Linewidth",2);

% Assign function handle for taylor polynomial
partialTaylor = @(x, a, i, state) (state / factorial(i))*(x-a)^i;

% Use a counter to rollover after 4 iterations of the loop, so you dont
% have to check specifically what derivative you need
counter = 1;

% Setup colors
color = hsv(N + 1);

hold on;

for i=0:N
    % Late bind function handle to have access to loop index and state
    % variables
    lateBind = @(x) partialTaylor(x, a, i, funcVal(counter));
    % arrayfun to map function to vector
    res = arrayfun(lateBind, x_space);
    % Add the new term to the y_space variable to get incrementing
    % precision and approximate the original function better
    y_space = y_space + res;
    % plot allllllllllll the values
    plot(x_space, y_space, "Color", color(i + 1,:));
    
    % Increment counter
    counter = counter + 1;
    % Reset counter every 4 iterations
    if counter == 5
        counter = 1;
    end
end
xl = xlim;
yl = ylim;

plot ([xl(1), xl(2)], [0, 0], 'k') % x Achse
plot ([0, 0], [yl(1), yl(2)], 'k') % y Achse
hold off;
end

