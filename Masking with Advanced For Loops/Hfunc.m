function [btime,mheight] = Hfunc(ih,iv,grav,increment,ltime)
%compute max height and time occurred
 
for j=1:increment:ltime 

    t(j)=j;
% use "governing equation".... use "t" vector to vectorize "h"
h(j) = ih + iv.*t(j) + 0.5*grav.*t(j).^2;
end
maxh=-2000;
for j=1:increment:ltime
     if h(j)>maxh;
         maxh=h(j);
         index=j;
     end
end

mheight=maxh;
btime=index;
 

end
