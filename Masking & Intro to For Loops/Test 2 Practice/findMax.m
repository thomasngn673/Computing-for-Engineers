function [max_val,max_index] = findMax(vector)
% Find Max Value and Vector
max_val=vector(1);
for i=2:1:(length(vector))
    if vector(i)>max_val
        max_val=vector(i);
        a=i;
    end
end
max_val=max_val;
max_index=a;