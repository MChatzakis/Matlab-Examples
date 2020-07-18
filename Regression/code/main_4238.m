%Name: Manos Chatzakis
%AM: 4238
%How to run: type "main_4238" in command window. 

function main_4238
    
    load('data.mat');
    
    disp(' ');
    disp('Name: Manos Chatzakis');
    disp('AM: 4238');
    disp('Execution of the code begins. Answers of every task following.');
    disp(' ');
    
    %Task 1 is RootMeanSquareError
    disp('Task 1: Is on the .m file');
    disp(' ');
    
    %Task 2:
    disp('Task 2');
    people = CityPopulation;
    disp('People vector:');
    disp(people);
    
    %Task 3:
    disp('Task 3');
    income = CitizenIncome;
    disp('Income vector');
    disp(income);
    
    %Task 4: Is on pdf. Uncomment the following code to run them here.
    %DrawIncome(income);
    
    disp('Task 4 is on pdf');
    
    %Task 5: Is on pdf. Uncomment the following code to run them here.
    %DrawCitizens(people);
    
    disp('Task 5 is on pdf');
    disp(' '); 
    
    %Task 6:
    disp('Task 6');
    
    proj_people = FindProjection(people,income);
    disp('proj_people vector:');
    disp(proj_people);
    
    proj_income = FindProjection(income, people);
    disp('proj_income vector:');
    disp(proj_income);
    
    error_proj_people = RootMeanSquareError(proj_people,p_ab);
    disp('proj_people error:');
    disp(error_proj_people);
    
    error_proj_income = RootMeanSquareError(proj_income,p_ba);
    disp('proj_income error:');
    disp(error_proj_income);

    disp('NOTE: The following vectors are linear transformations of [people] and [income]');
    disp(' ');
    
    %Task 7:
    disp('Task 7');
    
    [people1,people2,people3] = Return3randomvecs(people,income);
    disp('people1 vector:');
    disp(people1);
    disp('people2 vector:');
    disp(people2);
    disp('people3 vector:');
    disp(people3);
    
    [income1,income2,income3] = Return3randomvecs(income,people);
    disp('income1 vector:');
    disp(income1);
    disp('income2 vector:');
    disp(income2);
    disp('income3 vector:');
    disp(income3);
    %Scatters are included on pdf.

    disp('NOTE: The following vectors are non linear transformations of [people] and [income]');
    disp(' ');
    
    %Task 8:
    disp('Task 8');
    
    [people4,people5] = Return2nonLin(people,income);
    disp('people4 vector:');
    disp(people4);
    disp('people5 vector:');
    disp(people5);
    
    [income4,income5] = Return2nonLin(income,people);
    disp('income4 vector:');
    disp(income4);
    disp('income5 vector:');
    disp(income5);
    
    %Scatters are included on pdf.
    
    %Task 9:
    disp('Task 9');
    
    disp('People Vector');
    [b,error,mE,BLine] = Line(people);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('People1 Vector');
    [b,error,mE,BLine] = Line(people1);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('People2 Vector');
    [b,error,mE,BLine] = Line(people2);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('People3 Vector');
    [b,error,mE,BLine] = Line(people3);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('People4 Vector');
    [b,error,mE,BLine] = Line(people4);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('People5 Vector');
    [b,error,mE,BLine] = Line(people5);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('proj_people Vector');
    [b,error,mE,BLine] = Line(proj_people);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);

    disp('Income Vector');
    [b,error,mE,BLine] = Line(income);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('Income1 Vector');
    [b,error,mE,BLine] = Line(income1);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('Income2 Vector');
    [b,error,mE,BLine] = Line(income2);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('Income3 Vector');
    [b,error,mE,BLine] = Line(income3);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('Income4 Vector');
    [b,error,mE,BLine] = Line(income4);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('Income5 Vector');
    [b,error,mE,BLine] = Line(income5);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    disp('proj_income Vector');
    [b,error,mE,BLine] = Line(proj_income);
    disp('b:'); disp(b); disp('error:'); disp(error);
    disp('||E||:'); disp(mE); disp('Best Line:'); disp(BLine);
    
    %Scatters are included on pdf.
    
    %Here is the end. The following code is ONLY about tasks 10 and 11, and
    %wont be useful if a new data file is imported.
    %For every new data file, we need to analyze the outcome of task 9 to
    %decide which line is the best.
    %For this case, line "Bline" of [people] vector is the best to use(look at the pdf presentation)
    
    %Task 10
    disp('Task 10');
    [a,err,m,BLine] = Line(people);
    BestLine = BLine;
    disp('Best Line to use is this line:');
    disp(BestLine);

    %Task 11
    disp('Task 11');
    BestLine_error = RootMeanSquareError(y,BestLine);
    disp('Best Line error:');
    disp(BestLine_error);
    
    E = y - BestLine;
    BestLine_mE =sqrt(dot(E,E));
    disp('||E||:');
    disp(BestLine_mE);
    
    disp('NOTE: The graph you currently see is the best line. Every single graph asked to be drawn is located at the pdf presentation, and it is made with DrawCitizens, DrawIncome and Line function.');
    
end