function graph= SingleLink(K)
    probability = 0.01;%Intializing the probability to 1%
    Kpackets = []%Creating an array to store the result of transmitted packets. 
    chanceOfFailure = []%Creating an array to store the chance of failure.

    %looping through every probability
    for i = 1:99
        Kpackets(end + 1) = runSingleLinkSim(K, probability, 1000)%storing the result in the array
        chanceOfFailure(end +1) = probability%storing the current probability in the array
        probability = probability + 0.01%incrementing the probability for the next iteration. 
        
       
    end
    tbl1 = table(Kpackets, chanceOfFailure);%creating a table from the two arrays. 
    graph = plot(tbl1, "chanceOfFailure", "Kpackets","Marker","o", "LineStyle", "none");%graphing the table. 

    %setting the limits for the graph. 
    xlim([0.1, 1])
    ylim([0.1, 1000])