function [ bestx,besty,maxproduct] = Twointegers( total)
%maximize the product of one integer
%and the square root
%of the other integer. Integers must add up to
%"total"

x=[1:1:(total-1)];
y=total-x;
product=x.*(y).^(0.5);
[maxproduct,index]=max(product);
bestx=x(index);
besty=y(index);


end

