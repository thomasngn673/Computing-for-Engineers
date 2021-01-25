clc,clear,echo off
temps = load('temperatures.txt');
[nrows ncols] = size(temps);
% temperatures taken at Houston Zoo
%throughout 2013 at 12noon daily

% how many days in the year are < than 50
% how many days in the year are > than 80

count50=0;
count80=0;
for aa=1:1:nrows

    for bb=1:1:ncols
        if temps(aa,bb) < 50
            count50=count50+1;
        end
        if temps(aa,bb) > 80
            count80=count80 +1;
        end
    end
     
end
disp('# of days  < 50')
disp(count50)
disp('# of days  > 80')
disp(count80)

 

% how many days in the year are within 5 degrees of the
% average for the year

total=0;
for i=1:1:nrows
    for j=1:1:ncols
        total=total + temps(i,j);
        average=total/(nrows*ncols);
    end
end
count=0;
for i=1:1:nrows
    for j=1:1:ncols
        if temps(i,j)>=average+5 | temps(i,j)>=average-5
            count=count+1;
        end
    end
end
count

total=0;
for aa=1:1:nrows

    for bb=1:1:ncols
         total=total+temps(aa,bb);
    end
     
end
disp('avetemp');
avetemp=total/(nrows*ncols)

Count=0;
for aa=1:1:nrows

    for bb=1:1:ncols
         if temps(aa,bb)-avetemp <= 5 ...
                 |temps(aa,bb)+avetemp <= 5
           Count=Count + 1;  
         end
    end
     
end
disp('days with 5 degrees of average')
Count
