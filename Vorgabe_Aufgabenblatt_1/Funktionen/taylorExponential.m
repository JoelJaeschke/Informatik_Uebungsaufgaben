function taylorExponential (N, a)
% Ableitung e(x) ==> e(x)

% Create x and y vectors
x_space = linspace(a-2,a+2, 100);
y_space = zeros(1,100);

% Plot stdlib exp(x)
plot(x_space, exp(x_space), "k", "Linewidth",2);

% Create function handle for taylor
partialTaylor = @(x, a, i) (exp(a) / factorial(i))*(x-a)^i;

% Create colors
color = hsv(N + 1);
% Plot every additional part of the taylor polynomial
hold on;
for i=0:N
    % Late bind the partialTaylor handle to have access to loop index..
    % ugly but anyways
    lateBind = @(x) partialTaylor(x, a, i);
    % Use arrayfun to map handle to x_space
    res = arrayfun(lateBind, x_space);
    % Add the new term to the y_space variable to get incrementing
    % precision and approximate the original function better
    y_space = y_space + res;
    % plot allllll the values
    plot(x_space, y_space, "Color", color(i + 1,:));
end
xl = xlim;
yl = ylim;

plot ([xl(1), xl(2)], [0, 0], 'k') % x Achse
plot ([0, 0], [yl(1), yl(2)], 'k') % y Achse
hold off;
end