calcGraph = CalculatedTask2(5); % Running the calculated function with input 5

hold on;   % Hold the current plot to overlay additional graphs
grid on;   % Enable grid for better visual reference

simGraph = TwoSeriesLink(5); % Running the simulation function with input 5

% Set the color of both graphs to a custom cyan color
set(calcGraph, "Color", "#00fff2");
set(simGraph, "Color", "#00fff2");
