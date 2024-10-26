function result = runCustomCompoundNetworkSim(K,p1, p2, p3,N)
 simResults = ones(1,N); % a place to store the result of each simulation


 for i=1:N
     txAttemptCount = 0; % transmission count
     pktSuccessCount = 0; % number of packets that have made it across

     while pktSuccessCount < K
         r1 = rand;
         r = rand; % gen random num to determine if packet is successful (r > p)
         r2 = rand;
         repeat = 0;
         txAttemptCount = txAttemptCount + 1; % count 1st attempt
         if(r < p1 && r1 < p2)
             repeat = 1;
        
         elseif(r2 < p3)
             repeat = 1;
         else
             repeat = 0;
         end 
         % while packet transmissions is not successful (r < p)
         while repeat
         
             r = rand; % transmit again, generate new success check value r
             r1 = rand;
             r2 = rand;
             txAttemptCount = txAttemptCount + 1; % count additional attempt
             if(r < p1 && r1 < p2)
                repeat = 1;
        
             elseif(r2 < p3)
                repeat = 1;
             else
                repeat = 0;
         end 
         end
        
         pktSuccessCount = pktSuccessCount + 1; % increase success count
     
      end
        
      simResults(i) = txAttemptCount; % record total number of attempted
 end
 result = mean(simResults);
end