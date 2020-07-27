%This function returns a random number from x1 to x2.
%Manos Chatzakis
function x = RandomAim(x1,x2)
x=x1+rand(1,1)*(x2-x1);
end 