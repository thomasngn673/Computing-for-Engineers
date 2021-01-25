clc,clear all
echo off
disp('FName LName and my UH ID is 0000000') 

% E3 practice with Solution
%background:temperatures taken at Houston Zoo
%throughout 2013 at 12noon daily. There are 52 rows
% (weeks) and 7 columns (days of week). Column 1
% represents "Sunday"...Column 2 represents "Monday" etc.
% the dataset is named "temperatures.txt"

% Task 0
% load in temperatures.txt
% display the # rows and columns
disp('Complete Task 0 by putting the appropriate')
disp('Matlab Commands in the line below')
 
temps = load('temperatures.txt');
[nrows ncols] = size(temps)

% Task 1
% Display what day of the week on average is warmest
% Display what day of the week on average is coldest
%
disp('Complete Task 1 by putting the appropriate')
disp('Matlab Commands in the line below')
 

for mm=1:1:ncols  % keep day the same
    total=0; %reset total for each "day..Sun..Mon.."
    for nn=1:1:nrows % going through each week for a given day (ie Monday)
        total=total+temps(nn,mm);
    end
    total=total/nrows; % divide total by # of weeks (nrows)
    dayave(mm)=total; % now have the average for each day
end

maxd=0; % small Number
mind=150; % large Number
for fc=1:1:ncols  % look at average for each day
    if dayave(fc) >maxd
        maxd=dayave(fc);
        wday=fc;
    end
    if dayave(fc) < mind
        mind=dayave(fc);
        cday=fc;
    end
end
disp('max ave')
disp(maxd)
disp('warm day of week, 1=sun, 2=mon, etc.')
disp(wday)
disp('min ave')
disp(mind)
disp('cold day of week, 1=sun, 2=mon, etc.')
disp(cday)
        

 
 