%This function simulates the darts game, calculating base probabilities about the whole experiment.
%Manos Chatzakis
function Darts

trials = 10000; %The number of trials.

numOf50s = 0; %Erwtima a
numOf5s = 0; %Erwtima b
over200 = 0; %Erwtima c
under50 = 0; %Erwtima d
exactly100 = 0; %Erwtima e

totalPoints = 0; %The total points we gain 
roundPoints = 0; %The points we gain in every round.

%Stroing values to make histograms.
roundValuesForHistogram = zeros(trials,1); 
totalValuesForHistogram = zeros(trials,1);
hitValuesForHistogram = zeros(trials,1); %Make it 6*trials to see the histogram fot every single trial.

for i = 1: trials
    
    roundPoints = 0;
    
    for j = 1:6
        
        %Throwing the dart:
        x =RandomAim(1,15);
        y =RandomAim(1,15);
        
        %Finding where the dart hit.
        if((x>=7 && x<=9) && (y>=7 && y<=9))
             numOf50s = numOf50s + 1;
             roundPoints = roundPoints + 50;
             hitValuesForHistogram(i) = 50;
        elseif((x>=6 && x<=10) && (y>=6 && y<=10))
             roundPoints = roundPoints + 25;
             hitValuesForHistogram(i) = 25;
        elseif((x>=5 && x<=11) && (y>=5 && y<=11))
             roundPoints = roundPoints + 15;
             hitValuesForHistogram(i) = 15;
        elseif((x>=4 && x<=12) && (y>=4 && y<=12))
             roundPoints = roundPoints + 10;
             hitValuesForHistogram(i) = 10;
        elseif((x>=3 && x<=13) && (y>=3 && y<=13))
             roundPoints = roundPoints + 5;
             numOf5s = numOf5s+1;
             hitValuesForHistogram(i) = 5;
        elseif((x>=2 && x<=14) && (y>=2 && y<=14))
             roundPoints = roundPoints + 3;
             hitValuesForHistogram(i) = 3;
        elseif((x>=1 && x<=15) && (y>=1 && y<=15))
             roundPoints = roundPoints + 1;
             hitValuesForHistogram(i) = 1;
             %disp('bhd');
        end
    end
    
    %Collcting info about the other assignments.
    if(roundPoints > 200)
        over200 = over200 + 1;
    end
    
    if(roundPoints == 100)
        exactly100 = exactly100 + 1;
    end
    
    if(roundPoints < 50)
        under50 = under50 + 1;
    end
   
    totalPoints = totalPoints + roundPoints;
   
    %Keeping the values for the hists.
    roundValuesForHistogram(i) = roundPoints;
    totalValuesForHistogram(i) = totalPoints;
    
end

%Comment/Uncomment next lines to enable histograms.
histogram(roundValuesForHistogram);
%histogram(totalValuesForHistogram); //This does not provide useful info.
%histogram(hitValuesForHistogram);

%Printing the output(results) in a readble format:
probA = 100*numOf50s/(6*trials); 
probB = 100*numOf5s/(6*trials);
probC = 100*over200/trials;
probD = 100*under50/trials;
probE = 100*exactly100/trials;

fprintf('a)The probability of hitting the 50 point area is: %f%%\n',probA);
fprintf('b)The probability of hitting the 5 point area is: %f%%\n',probB);
fprintf('c)The probabilty of getting over 200 round points is: %f%%\n',probC);
fprintf('d)The probabilty of getting under 50 round points is: %f%%\n',probD);
fprintf('e)The probabilty of getting exactly 100 round points is: %f%%\n',probE);

end