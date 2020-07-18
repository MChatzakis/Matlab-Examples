%Task 6
function [c]= FindProjection(a,b)
w=dot(a,b);
u=dot(a,a);
c = (w/u)*a;
end