%Task 5
function DrawCitizens(people)
    
    load('data.mat');
    scatter(people,y,'filled');
    title('Population Graph');
    xlabel('Sample of population of each city');
    ylabel('Car Sales');

end