function point = TwoSeriesLink(K)
    probability = 0.01; % Initializing the probability to 1%
    Kpackets = []; % Creating an array to store the result of transmitted packets. 
    chanceOfFailure = []; % Creating an array to store the chance of failure.

    % Looping through every probability from 0.01 to 0.99 (incrementing by 0.01)
    for i = 1:99
        Kpackets(end + 1) = runTwoSeriesLinkSim(K, probability, 1000); % Storing the result in the Kpackets array
        chanceOfFailure(end + 1) = probability; % Storing the current probability in the chanceOfFailure array
        probability = probability + 0.01; % Incrementing the probability for the next iteration.
    end
    
    tbl1 = table(Kpackets, chanceOfFailure); % Creating a table from the two arrays. 
    point = plot(tbl1, "chanceOfFailure", "Kpackets", "Marker", "o", "LineStyle", "none"); % Graphing the table.

    % Setting the limits for the graph. 
    xlim([0.1, 1]); % Setting the x-axis limits from 0.1 to 1
    ylim([0.1, 1000]); % Setting the y-axis limits from 0.1 to 1000
end
