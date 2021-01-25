function [vector_new] = zeroNeg(vector)
% Replaces all the negative values of a vector with zero

replace=0;
vector_new=vector;
for i=1:1:(length(vector))
    if vector_new(i)<0
        vector_new(i)=replace;
        % when assigning to a new integer, old value goes on left
        % when assigning to a new variable, old value goes on right
    end
end