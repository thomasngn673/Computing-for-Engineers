clc
clear all
vv=[5,-8];
ww=[1,2];
aa=[0,3,-7];
bb=[2,3,1];
cc=[3,-4,-1];
dd=[0,5,2];















disp('pause')
pause
disp('lets check our results for aa and bb')
term1=(aa(1)-bb(1)).^2;
term2=(aa(2)-bb(2)).^2;
term3=(aa(3)-bb(3)).^2;
termfinal=sqrt(term1+term2+term3)