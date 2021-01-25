%% Problem 1
clc,clear,close all
bob=randi(10,1,15)

replace=5;
narf=bob;
for i=1:1:(length(bob))
    if narf(i)>5
        i;
        narf(i)=replace;
    end
end
narf

%% Problem 2
clc,clear,close all
list1=load('Lab12list1.txt')

% a) Count # of values whose square is >100
count=0;
for i=1:1:(length(list1))
    if (list1(i))^2>100
        count=count+1;
    end
end
count

% b) Find max value and index
[max_val,max_index]=findMax(list1)

% c) Replace all negative values with 0
zeroNeg(list1)

% d) Finds the index of a target value in a vector
[index]=findIndicesAnswer(list1,-6)
[index]=findIndicesAnswer(list1,12)
[index]=findIndicesAnswer(list1,1941834)

% e) Finds all the max values of the vector and indices of occurence
searchMax(list1)

% f)