function result = CalculatedTask5(K)
    p1 = 0.10;
    p2 = 0.60;
    p3 = 0.01;
    chanceOfFailure = [];
    packets = [];
    for i= 1:99
        packets(end + 1) = K/((1-p1 * p2) * (1-p3));
        chanceOfFailure(end + 1) = p3;
        p3 = p3 + 0.01;
    
        
    end 
    tab1 = table(chanceOfFailure, packets);
    plot(tab1, "chanceOfFailure", "packets");
    xlim([0.1, 1])
    set(gca, 'YScale', 'log')
 
    






