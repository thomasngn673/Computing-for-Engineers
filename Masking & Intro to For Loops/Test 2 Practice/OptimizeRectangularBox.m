function [bestx,besty] = OptimizeRectangularBox(total)
% Optimize Rectangular Box
%   square base
% open top
x=[1:.01:(total-1)];
%x.^2+(4*x*y)=total;
y=(total-x.^2)./(4*x);
volume=x.^2.*y;
[max_volume,max_index]=max(volume);
bestx=x(max_index);
besty=(total-bestx.^2)./(4*bestx);
end

