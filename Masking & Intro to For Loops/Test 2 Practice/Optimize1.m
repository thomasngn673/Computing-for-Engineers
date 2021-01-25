function [bestx,besty] = Optimize1(total)
% Optimize1 Function
%   Finds the best "x-value" and "y-value" given the sum of x & y, and that
%   x*y^2=product

x=[1:1:(total-1)];
y=total-x;
product=x.*y.^2;
[max_product,max_index]=max(product);
bestx=x(max_index);
besty=total-bestx;
end

