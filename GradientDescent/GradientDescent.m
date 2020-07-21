%Manos Chatzakis
%AM: 4238
%This function executes and visualises the gradient descent method .
%It is the solution to Part 2 and 3 of the assignment.
function least = GradientDescent(function_number,max_iterations,a,first_value)
    x = first_value - (a*Derivative(function_number,first_value)); %Get the first value of the method.
    p = -2.5:0.1:2.5; %x_Axis will be from -2.5 to 2.5 
    %Next Step: Draw the spesific function graph and mark the starting point 
    if(function_number == 1)
        y = p.^2 + p/2 -2;
        plot(p,y);
        title('Gradient Descent method for function 1');
        xlabel('Values of x');
        ylabel('f1(x)');
        hold on;
        y1 = first_value.^2 + first_value/2 -2;
        plot(first_value,y1,'*','Color','green');
        hold on;
        plot(-1/4,-33/16,'*','Color','black');
        hold on;
    end
    
    if(function_number == 2)
        y = p.^3 - p.^2 + 5;
        plot(p,y);
        title('Gradient Descent method for function 2');
        xlabel('Values of x');
        ylabel('f2(x)');
        hold on;
        y1 =first_value.^3 - first_value.^2 + 5;
        plot(first_value,y1,'*','Color','green');
        hold on;
        plot(2/3,131/27,'*','Color','black');
        hold on;
    end
    
    if(function_number == 3)
        y = exp(p) + p.^2 + 1;
        plot(p,y);
        title('Gradient Descent method for function 2');
        xlabel('Values of x');
        ylabel('f2(x)');
        hold on;
        y1 = exp(first_value) + first_value.^2 + 1;
        plot(first_value,y1,'*','Color','green');
        hold on;
        plot(-0.3517,1.82718,'*','Color','black');
        hold on;
    end
    
    %Gradient Descent method starts:
    for i=0:1:max_iterations-1
        x = x - a*Derivative(function_number,x);
        %For specific function, add the draw each point the method gives.
        if(function_number == 1)
            y1 = x.^2 + x/2 -2;
            plot(x,y1,'*','Color','red');
            legend('Function','First Estimation','Real Minimum','Estimations');
        end
         
        if(function_number == 2)
            y1 = x.^3 - x.^2 + 5;
            plot(x,y1,'*','Color','red');
            legend('Function','First Estimation','Real Minimum','Estimations');
        end
                
        if(function_number == 3)
            y1 = exp(x) + x.^2 + 1;
            plot(x,y1,'*','Color','red');
            legend('Function','First Estimation','Real Minimum','Estimations');
        end        
    end    
    least = x; %Return the minimum.
end