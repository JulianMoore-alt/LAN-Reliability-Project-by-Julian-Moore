calcGraph = CalculatedTask2(1); % Running the calculated function with input 1

hold on;   % Hold the current plot to overlay additional graphs
grid on;   % Enable grid for better visual reference

simGraph = TwoSeriesLink(1); % Running the simulation function with input 1

% Set the color of both graphs to a custom green color
set(calcGraph, "Color", "#00ff44");
set(simGraph, "Color", "#00ff44");
