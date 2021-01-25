e31331=[9,4,-6;2,-7,8;5,-3,5;0,1,-2; -87,42,33,;1,2,3; 4,5,6]

[row,col,ndim]=size(e31331)
coogs=e31331(:,col)
owls=coogs;

replace=coogs(3)
for i=1:row
    if owls(i)>17
        owls(i)=owls(3);
    end
end
disp('owls '),owls
count=0;
for i=1:row
    if owls(i)<11
        count=count+1;
    end
end
disp('# of values in owls <11 '),count

    

 