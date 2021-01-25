clc,clear,echo off
temps = load('temperatures.txt');
[nrows ncols] = size(temps);
% temperatures taken at Houston Zoo
%throughout 2013 at 12noon daily
%find the # of weeks where the maximum
%temperature for a given week was
% greater than 5 degrees above the
%average for that week

%outer loop initialization
count = 0; % how often will Max for week exceed Ave+5
%outer loop control
for m = 1:1:nrows
    %outer loop body/inner loop initialization
	disp(m);% one week at atome
    total = 0; % start at zero every week
	maxval = -500;% assume very cold each week
	% outer loop body -Inner loop control
	for n = 1:1:ncols % sun mon tues...sat
        %outer loop body-inner loop body
        total = total + temps(m,n); %adding up for the week
		if temps(m,n) > maxval % determing max for the week
			maxval = temps(m,n);
        end
    end
    % week is finished
    %outer loop body-inner loop cleanup
	average = total/ncols; %lets get average for week
    disp(average);
    disp(maxval);
	% Now count
	if maxval >= average + 5 %was max for week > ave +5 ?
        disp('bingo');
		count = count + 1;
	end
end %we have figured out the week...now start again
% outer loop cleanup -- Display result
disp('Number of weeks is:') %all done..lets get results
disp(count)

% practice problems
% what day of the week is coldest (smallest average)
zweek=zeros(1,ncols);
for i=1:1:ncols
    total=0;
    for j=1:1:nrows
        total=total+temps(j,i);
        average=total/nrows;
        zweek(i)=average;
    end
end
min_temp=zweek(1);
for a=2:1:ncols
    if zweek(a)<min_temp
        min_temp=zweek(a);
    end
end
coldest_day=find(min_temp==zweek)
        
% what day of the week is warmest (largest average)
zweek=zeros(1,ncols);
for i=1:1:ncols
    total=0;
    for j=1:1:nrows
        total=total+temps(j,i);
        average=total/nrows;
        zweek(i)=average;
    end
end
max_temp=zweek(1);
for a=2:1:ncols
    if zweek(a)>max_temp
        max_temp=zweek(a);
    end
end
warmest_day=find(max_temp==zweek)

% how many days in the year are < than 50
count=0;
for i=1:1:nrows
    for j=1:1:ncols
        if temps(i,j) < 50
            count = count + 1;
        end
    end
end
disp(count)

% how many days in the year are > than 80
count=0;
for i=1:1:nrows
    for j=1:1:ncols
        if temps(i,j) > 80
            count = count + 1;
        end
    end
end
disp(count)

% how many days in the year are within 5 days of the
% average for the year



