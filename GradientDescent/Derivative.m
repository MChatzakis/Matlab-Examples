%Manos Chatzakis
%AM: 4238
%Based on given input, this function returns the exact derivative
function output = Derivative(function_number,x)
    %f1 derivative
    if(function_number == 1)
        output = (2*x) + 0.5;   
    end    

    %f2 derivative
    if(function_number == 2)
        output = (3*x*x) - (2*x);
    end
    
    %f3 derivative
    if(function_number == 3)
        output = exp(x) + (2*x);
    end            
end