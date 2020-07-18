%Task 9
%This funtion solves the system Ax=b and draws the pr. line.
%A is made of inputed vector
function [c,err,mE,line] = Line(xLabel_Vector)
    load('data.mat');
    A = zeros(10,2);
    b = zeros(10,1);
    for i=1:1:10
        A(i,1)=1;
        b(i)=y(i);
    end
    for i=1:1:10
        A(i,2)=xLabel_Vector(i); 
    end
    
    x=A\b;
    c=A*x;
    
    %Drawing the graph:
    scatter(xLabel_Vector,y,'filled'); %For 9.b.i
    hold on;

    u=x(1)+x(2)*xLabel_Vector;
    plot(xLabel_Vector,u);
    hold on;
    
    scatter (A(:,2),c,'filled');
    legend('9.2a','Best Line','9.2b');
    xlabel('Population / Income');
    ylabel('Car sales');
    hold off;

    err = RootMeanSquareError(u,y);
    line = u;
    E = c-b;
    mE = sqrt(dot(E,E));
end