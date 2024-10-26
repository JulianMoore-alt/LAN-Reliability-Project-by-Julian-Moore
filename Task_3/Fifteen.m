calcGraph = CalculatedTask3(15); % Running the calculated function with input 15

hold on;   % Hold the current plot to overlay additional graphs
grid on;   % Enable grid for better visual reference

simGraph = twoParallelLink(15); % Running the simulation function with input 15

% Set the color of both graphs to a custom purple color
set(calcGraph, "Color", "#c800ff");
set(simGraph, "Color", "#c800ff");
