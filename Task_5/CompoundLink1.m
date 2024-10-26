function point = CompoundLink1(K, p1, p2, p3)
    p1n = p1; % Assigning input probability p1 to p1n
    p2n = p2; % Assigning input probability p2 to p2n
    p3n = p3; % Assigning input probability p3 to p3n

    Kpackets = []; % Creating an array to store the result of transmitted packets.
    chanceOfFailure = []; % Creating an array to store the chance of failure.

    % Looping through every probability from 0.1 to 0.99 (incrementing by 0.01)
    for i = 1:99
        Kpackets(end + 1) = runCustomCompoundNetworkSim(K, p1n, p2n, p3n, 1000); % Storing the result of the simulation in the Kpackets array
        chanceOfFailure(end + 1) = p3n; % Storing the current probability p3n in the chanceOfFailure array
        p3n = p3n + 0.01; % Incrementing p3n for the next iteration.
    end

    tbl1 = table(Kpackets, chanceOfFailure); % Creating a table from the two arrays.
    point = plot(tbl1, "chanceOfFailure", "Kpackets", "Marker", "o", "LineStyle", "none"); % Graphing the table.

    % Setting the limits and scale for the graph. 
    xlim([0.1, 1]); % Setting the x-axis limits from 0.1 to 1
    set(gca, 'YScale', 'log'); % Setting the y-axis to a logarithmic scale
end
