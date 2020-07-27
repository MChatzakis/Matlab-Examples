%This function simulates the 3 door experiment.
%Manos Chatzakis
function DoorExperiment()

timesWon = 0; %How many times the player won then he changed the door.

disp('Simulation started...');

for j = 0:1000 %The simulation is aboout 1000 trials.
    doors = [0,0,0]; %The 3 doors.
    doors(randi(3)) = 1; %The winning door.
    currentChoice = randi(3); %The player's choice.
    
	%Choosing the right door to open.
	i = randi(3);
    while (i == currentChoice || doors(i) == 1)
     i = randi(3); 
    end  
    
	doors(i) = -1; %The opened door.
    
	%Changing the door
    prevDoor = currentChoice;
    currentChoice = randi(3);
    while(doors(currentChoice) == -1 || currentChoice == prevDoor)
        currentChoice = randi(3);
    end  

	%Checking if the player won with door change.
	%Its obvious that if he won x times using this method, the he would win |x-trials| times with the opposite method.
    if(doors(currentChoice) == 1) 
        timesWon = timesWon + 1;
    end
end

fprintf('*\n*\n*\n*\n*\nSimulation ended.\nResults:\n');

winProb = 100*timesWon/j; %The probability of winning with door change.
winProbWithSameDoor = 100* abs(timesWon-j)/j; %The probability of winning with the same door.

fprintf(' ->Winning percentance with the same door: %f%% \n',winProbWithSameDoor);
fprintf(' ->Winning percentance with door change:   %f%% \n',winProb);
disp('Program ended.');
end