function result = CalculatedTask2(K)
    % This function calculates the number of packets that must be sent
    % to achieve success probabilities ranging from 1% to 99%.
    % Input: K - constant that influences the required packet count.
    % Output: result - a plot of failure probability vs. number of packets.

    probability = 0.01;       % Initialize probability to 1% (failure probability)
    chanceOfFailure = [];     % Initialize an empty array to store failure probabilities
    packets = [];             % Initialize an empty array to store calculated packet counts

    for i = 1:99              % Loop to calculate values for probabilities 1% to 99%
        % Calculate required packets based on the formula K / (1 - probability)^2
        packets(end + 1) = K/(1 - probability)^2;

        % Store the current failure probability in the array
        chanceOfFailure(end + 1) = probability;

        % Increment probability by 1% for the next iteration
        probability = probability + 0.01;
    end

    % Create a table with failure probabilities and corresponding packet counts
    tab1 = table(chanceOfFailure, packets);

    % Plot the failure probability (x-axis) vs. packet count (y-axis)
    result = plot(tab1, "chanceOfFailure", "packets");

    % Set x-axis limits to range from 0.1 (10%) to 1 (100%)
    xlim([0.1, 1]);

    % Set y-axis limits to range from 0.1 to 1000 packets
    ylim([0.1, 1000]);
end





