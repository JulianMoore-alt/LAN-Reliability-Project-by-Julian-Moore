calcGraph = CalculatedTask3(100); % Running the calculated function with input 100

hold on;   % Hold the current plot to overlay additional graphs
grid on;   % Enable grid for better visual reference

simGraph = twoParallelLink(100); % Running the simulation function with input 100

% Set the color of both graphs to a custom yellow-orange color
set(calcGraph, "Color", "#ffbb00");
set(simGraph, "Color", "#ffbb00");
