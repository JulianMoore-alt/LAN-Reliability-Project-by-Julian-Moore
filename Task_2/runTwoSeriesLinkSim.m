function result = runTwoSeriesLinkSim(K,p,N)
 simResults = ones(1,N); % a place to store the result of each simulation

 for i=1:N
     txAttemptCount = 0; % transmission count
     pktSuccessCount = 0; % number of packets that have made it across

     while pktSuccessCount < K
         r1 = rand;
         r = rand; % gen random num to determine if packet is successful (r > p)
         txAttemptCount = txAttemptCount + 1; % count 1st attempt
        
         % while packet transmissions is not successful (r < p)
         while r < p || r1 < p
             r = rand; % transmit again, generate new success check value r
             r1 = rand;
             txAttemptCount = txAttemptCount + 1; % count additional attempt
         end
        
         pktSuccessCount = pktSuccessCount + 1; % increase success count
     
      end
        
      simResults(i) = txAttemptCount; % record total number of attempted
 end
 result = mean(simResults);
end