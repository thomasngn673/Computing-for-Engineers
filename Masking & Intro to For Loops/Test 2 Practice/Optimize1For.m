function [bestx,besty] = Optimize1For(total)
% Optimize1 Function
%   Finds the best "x-value" and "y-value" given the sum of x & y, and that
%   x*y^2=product
x=[1:1:(total-1)];
y=total-x;
product=x.*y.^2;
max_product=product(1);
for x=2:1:(total-1)
    if product(x)>max_product
        max_product=product(x);
        a=x;
    end
bestx=a;
besty=total-bestx;
end