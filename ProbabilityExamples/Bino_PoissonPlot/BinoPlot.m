%Manos Chatzakis
function BinoPlot(x,p)
    k = 0:x;
    plot(k,binopdf(k,x,p),'*');
    hold on;
end