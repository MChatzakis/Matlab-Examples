%Manos Chatzakis
%AM:4238
function [min_x,min_y] = f4GradientDescent(max_iterations,a,first_value_x,first_value_y)
  
    first_value_z = first_value_x.^2 + first_value_y.^2 + exp(first_value_x);
    
    x_value = first_value_x - (a*f4Der_x(first_value_x));
    y_value = first_value_y - (a*f4Der_y(first_value_y));
    
    [x,y] = meshgrid(-2:.2:2);
    z = x.^2 + y.^2 + exp(x);
    surf(x,y,z);
    title('Gradient Descent method for function 4');
    xlabel('Values of x');
    ylabel('Values of y');
    zlabel('Values of z = f(x,y)');
    hold on;
    text(first_value_x,first_value_y,first_value_z,'*','Color','green','Fontsize',20);
    text(-0.35,0,0.82719,'*','Color','black','Fontsize',20);
    
    for i=0:1:(max_iterations-1)
        x_value = x_value - (a*f4Der_x(x_value));
        y_value = y_value - (a*f4Der_y(y_value));
        z = x_value.^2 + y_value.^2 + exp(x_value);
        text(x_value,y_value,z,'*','Color','red','Fontsize',20);
    end   
    
    min_x = x_value;
    min_y = y_value;
    
end