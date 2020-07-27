%Manos Chatzakis
%This functions simulates the coin flip test.
%Param prob is the probality of the coin to turn to a specific side.
function CoinTest(prob)

head = 0; %The number of the heads.
letter = 0; %The nuber of the letters.
bet = 1; %The money the two players bet.

for test = 1 : 5000 %The proccess is about 5000 trials in total. Reduce this if the program takes too long to execute.
  currentOutcome = rand; %Random value between 0,1
  if(currentOutcome > prob)
      letter = letter+1; %If letters are shown, increment the counter.
  end
  if(currentOutcome <= prob)
     head = head+1; 
  end
  
  profitPeriklis = bet*head- bet*letter; %The profit of Periklis based on the heads.
  profitArsinoe = bet*letter - bet*head; %The profit of Arsinoe based on the letters.
  
  %Adding the points to a plot.
  plot(test,profitPeriklis,'*','Color','blue'); 
  plot(test,profitArsinoe,'*','Color','red');
  
  hold on;
end
  title('Coin Flip Profit');
  xlabel('Number of trials');
  ylabel('Profit');
end