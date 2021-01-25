clc,clear,clf, echo on
 
minion=imread('minion.jpg');
figure(205)
image(minion)
pause
beach=imread('beach.jpg');
figure(206)
image(beach)
pause
minion2=minion;
minion3=minion;
beach2=beach;
red=minion(:,:,1);
green=minion(:,:,2);
blue=minion(:,:,3);
mask=red<10 & green>250 & blue<30;%identify GREEN
 
 

mask3D=cat(3,mask,mask,mask);%3D Mask GREEN
figure(207)
%Use mask for equiv locations on beach
%take beach data and replace "green"
% in Minion
minion2(mask3D)=beach(mask3D);
image(minion2)
disp('pause')
pause
%now place "beach" within Minion"
mask=red>10 & green<=255 & blue>30;%identify Minion
mask3D=cat(3,mask,mask,mask);%3D Mask MINION
%Use mask for equiv locations on beach
%take beach data and replace "Minion"
% and keep GREEN in Minion
minion3(mask3D)=beach(mask3D);
figure(208)
image(minion3)