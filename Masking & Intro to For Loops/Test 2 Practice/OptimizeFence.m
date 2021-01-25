function [bestx,besty] = OptimizeFence(total)
% Optimize Area of a Pen
%   3 sections

x=[1:1:(total-1)];
%4x+2y=total;
y=(total-4*x)/2;
area=x.*y;
[max_area,max_index]=max(area);
bestx=x(max_index);
besty=(total-4*bestx)/2;
end

