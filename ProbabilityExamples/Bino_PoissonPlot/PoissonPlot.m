%Manos Chatzakis
function PoissonPlot(k,l)
   x = 0:k;
   plot(x,poisspdf(x,l),'*');
   hold on;
end