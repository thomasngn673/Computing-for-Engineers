temps = load('temperatures.txt');
[nweeks ndays] = size(temps);
% find first week in which the temperature
% exceeds 90 three
% times or MORE in a given week

%outer loop initialization
threeFound = 0;
%outer loop control
for week = 1:1:nweeks
    %outer loop body and inner loop initialization
	count = 0;
	% Inner loop - count days over 90
    % inner loop control
	for day = 1:1:ndays
        %inner loop body
		if temps(week,day) > 90
			count = count + 1;
		end
    end
    %post inner loop cleanup
	% Check count, exit if done
	if count >= 3
		threeFound = 1;
		weekNumber = week;	% save the week index
		break;
    end

end

%post outer loop cleanup
if threeFound
	disp('1st week over 90 three times is:')
	disp(weekNumber)
else
	disp('There were no weeks over 90 three times.')
end

% using implied loops:
hotWeeks = find(sum(temps'>80)>=3);
if length(hotWeeks)>=1
	disp('1st week over 80 three times is:')
	disp(hotWeeks(1))
else
	disp('There were no weeks over 80 three times.')
end
