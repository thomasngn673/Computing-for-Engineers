function [besth,bestr] = OptimizeCylinder(total)
% Optimize Cylinder Volume given total surface area 
h=[1:1:(total-1)];
% 2*pi*r*h+pi*r^2=total

volume=pi*r.^2*h;
[max_volume,max_index]=max(volume);
besth=h(max_index);
bestr=
end

