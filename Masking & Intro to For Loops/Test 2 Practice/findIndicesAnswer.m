function [index] = findIndices(vector,target)
% Finds the index of a target value in a vector
y=1;
index=0;
% establish array 'index' of 0 values
for i=1:1:(length(vector))
    if vector(i)==target
        index(y)=i;
        % first value of array is i
        y=y+1;
        % next value of array is the next i
    end
end