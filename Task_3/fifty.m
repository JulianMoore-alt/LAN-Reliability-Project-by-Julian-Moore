calcGraph = CalculatedTask3(50); % Running the calculated function with input 50

hold on;   % Hold the current plot to overlay additional graphs
grid on;   % Enable grid for better visual reference

simGraph = twoParallelLink(50); % Running the simulation function with input 50

% Set the color of both graphs to a custom pink color
set(calcGraph, "Color", "#ff00fb");
set(simGraph, "Color", "#ff00fb");
