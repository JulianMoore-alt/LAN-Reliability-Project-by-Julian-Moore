function result = CalculatedTask4(K)
    probability = 0.01; % Initializing the probability to 1%
    chanceOfFailure = []; % Creating an array to store the chance of failure.
    packets = []; % Creating an array to store the calculated packets.

    % Looping through every probability from 0.01 to 0.99 (incrementing by 0.01)
    for i = 1:99
        packets(end + 1) = K/ ((1 - probability * probability) * (1 - probability)); % Calculating packets based on the formula and storing in the packets array
        chanceOfFailure(end + 1) = probability; % Storing the current probability in the chanceOfFailure array
        probability = probability + 0.01; % Incrementing the probability for the next iteration.
    end 

    tab1 = table(chanceOfFailure, packets); % Creating a table from the two arrays.
    result = plot(tab1, "chanceOfFailure", "packets"); % Graphing the table.
    
    % Setting the limits and scale for the graph. 
    xlim([0.1, 1]); % Setting the x-axis limits from 0.1 to 1
    set(gca, 'YScale', 'log'); % Setting the y-axis to a logarithmic scale
end



