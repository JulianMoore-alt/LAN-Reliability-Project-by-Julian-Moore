function result = CalculatedTask1(K)
    probability = 0.01%starting probability
    chanceOfFailure = []%Array to contain the chances of failure to graph
    packets = []%Array to contain the amount of packets transmitted to graph. 

    %Looping through every probability
    for i= 1:99
        packets(end + 1) = K/(1-probability)%Storing the caculated result in the array
        chanceOfFailure(end + 1) = probability;%Storing the given probability in the array. 
        probability = probability + 0.01;%incrementing the probability
     
    end 
    tab1 = table(chanceOfFailure, packets);%creating a table to graph the result
    result = plot(tab1, "chanceOfFailure", "packets");%Plotting the result, and storing it to the result of the function
    %so edits can be made later.

    %setting the limits of the graph. 
    xlim([0.1, 0.99])
    ylim([0.1, 1000])
 
    






