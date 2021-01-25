function [index] = findIndices(vector,target)
% Finds the index of a target value in a vector
for i=1:1:(length(vector))
    if vector(i)==target
        index=i;
    end
    if vector(i)~=target
        index=i;
        index=0;
    end
end