function [index_max_vector] = searchMax(vector)
% Displays all indices of max values
vector_indices=1;
vector_max=vector(1);
% vector_indices(1)=vector_max;
j=1;
for i=2:1:(length(vector))
    if vector(i)>vector_max
    vector_max=vector(i);
    vector_indices(j)=i;
    j=j+1;
    elseif vector(i)==vector_max
        j=j+1;
        vector_indices(j)=i;
    end
end
index_max_vector=vector_indices;