clc,clear,echo off
temps = load('temperatures.txt');
[nrows, ncols] = size(temps);
% temperatures taken at Houston Zoo
%throughout 2013 at 12noon daily
%find the # of weeks where the maximum
%temperature for a given week was
% greater than 5 degrees above the
%average for that week

%outer loop initialization
count = 0;
%outer loop control
for m = 1:1:nrows
    %outer loop body/inner loop initialization
	disp(m)
    total = 0;
	maxval = -500;
	% outer loop body -Inner loop control
	for n = 1:1:ncols
        %outer loop body-inner loop body
		
        total = total + temps(m,n);
		if temps(m,n) > maxval
			maxval = temps(m,n);
		end
	end
    %outer loop body-inner loop cleanup
	average = total/ncols;
    disp(average)
    disp(maxval)
	% Now count
	if maxval >= average + 5
        disp('bingo')
		count = count + 1;
	end
end
% outer loop cleanup -- Display result
disp('Number of weeks is:')
disp(count)

% using implied loops:
%disp('Number of weeks is:')
%disp( sum(max(temps')>=mean(temps')+5) )

% max(temps) finds the max of every column 



