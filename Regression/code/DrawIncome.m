%Task 4
function DrawIncome(income)
    load('data.mat');
    scatter(income,y,'filled');
    title('Income Graph');
    xlabel('Average income of citizens');
    ylabel('Car sales');
end