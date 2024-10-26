function point = compoundNetwork(K)
    p1 = 0.01; % Initializing the probability p1 to 0.01
  
    Kpackets = []; % Creating an array to store the result of transmitted packets.
    chanceOfFailure = []; % Creating an array to store the chance of failure.

    % Looping through every probability from 0.01 to 0.99 (incrementing by 0.01)
    for i = 1:99
        Kpackets(end + 1) = runCompoundNetworkSim(K, p1, 1000); % Storing the result of the simulation in the Kpackets array
        chanceOfFailure(end + 1) = p1; % Storing the current probability p1 in the chanceOfFailure array
      
        p1 = p1 + 0.01; % Incrementing p1 for the next iteration.
    end

    tbl1 = table(Kpackets, chanceOfFailure); % Creating a table from the two arrays.
    point = plot(tbl1, "chanceOfFailure", "Kpackets", "Marker", "o", "LineStyle", "none"); % Graphing the table.

    xlim([0.1, 1]); % Setting the x-axis limits from 0.1 to 1
    set(gca, 'YScale', 'log'); % Setting the y-axis to a logarithmic scale
end
