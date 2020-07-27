%Manos Chatzakis // b erwtima
%NOTE: To draw 5 functions, just call this function 5 times with your desired variables.
function ComparingVariables(m,s)
x = -10:0.1:10;
y = normpdf(x,m,s);
plot(x,y);
title('Gaussian Plot');
xlabel('x');
ylabel('y');
hold on;
end