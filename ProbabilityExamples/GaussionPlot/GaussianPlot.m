%Manos Chatzakis // a. erwtima
function GaussianPlot(s,x1,x2,m)
x = x1:0.1:x2;
j = (1/(s*sqrt(2*pi))) * exp((-1/2)*((x-m)/s).^2);
plot(x,j);
title('Gaussian Plot');
xlabel('x');
ylabel('y');
end