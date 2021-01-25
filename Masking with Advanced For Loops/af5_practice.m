
clc,clear all, clf
disp('FName LName and my UH ID is 0000000')

% Task 1: Define an anonymous function aa = sin(4t))-1
disp('Complete Task 1 by putting the appropriate')
disp('Matlab Commands below')
aa=@(t) sin(4*t)-1;

% Task 2:  Define an anonymous function bb= 0.2*t.^2 -2
disp('Complete Task 2 by putting the appropriate')
disp('Matlab Commands below')
bb=@(t) 0.2*t.^2 -2;

% Task 3:  Evaluate aa for t between 1.2 and 3.0
% store the result in cc
disp('Complete Task 3 by putting the appropriate')
disp('Matlab Commands below')
tt=[1.2:0.1:3.0];
cc=aa(tt);

% Task 4:  Evaluate bb for t between 3 and 7
% store the result in dd
disp('Complete Task 4 by putting the appropriate')
disp('Matlab Commands below')
dd=bb(tt);

% Task 5: Plot on the same graph aa and bb from the results
% obtained from Task 3 and Task 4
disp('Complete Task 5 by putting the appropriate')
disp('Matlab Commands below')
figure(72)
plot(tt,cc)
hold on
plot(tt,dd)

disp('pause')
pause

% Task 6:  Where do aa and bb intersect based on the plot
% obtained in T5 ??
disp('Complete Task 6 by putting the appropriate')
disp('Matlab Commands below')

% create new anonymous function x_aa_bb
x_aa_bb=@(t) aa(t)-bb(t);
% evaluate x_aa_bb over the interval defined by tt
eval_aa_bb=x_aa_bb(tt);

root1=fzero(x_aa_bb,1.4)
root2=fzero(x_aa_bb,2.4)
  