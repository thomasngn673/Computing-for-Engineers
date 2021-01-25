clc, clear all
 

% Task 0
% load in numeric data. The data was gathered between
% t = -0.5 and +1.5 seconds every 0.01 seconds. This data
% is shown with the red line.
yt0=load('red_data.txt');

t0=[-0.5:0.01:1.5];
  
% Task 0.5
% ALL ON SAME PLOT
% create and plot an horizontal line y=52...
%green in color
% create an plot another horizontal line y=8...
% blue in color
% plot yt0 vs t0

figure(111)
hold on
yline(52,'g'); % creates horizontal line
yline(8,'b'); % creates horizontal line
plot(t0,yt0,'r');
hold off
disp('pause')
pause
disp('Task 1')
% Task 1
% we need to "model" the red function" 
pbr=polyfit(t0,yt0,18); %gives coeff of polynomial
ar=polyval(pbr,t0);
figure(222)
hold on
plot(t0,yt0,'r');
plot(t0,ar,'b');
disp('pause')
pause
disp('Task 1.5')
% Task 1.5
% create anonymous function based on coefficents from
% polyfit, which are housed in pbr
jy=@(t) pbr(1)*t.^18 +pbr(2)*t.^17 +pbr(3)*t.^16 +...
    pbr(4)*t.^15 +pbr(5)*t.^14 +pbr(6)*t.^13 +...
    pbr(7)*t.^12 +pbr(8)*t.^11 +pbr(9)*t.^10 +...
    pbr(10)*t.^9 +pbr(11)*t.^8 +pbr(12)*t.^7 +...
    pbr(13)*t.^6 +pbr(14)*t.^5 +pbr(15)*t.^4 +...
    pbr(16)*t.^3 +pbr(17)*t.^2 +pbr(18)*t + pbr(19);
md=jy(t0);
plot(t0,md,'cd') % test by plotting...what happened ?
hold off
disp('pause')
pause
disp('Task 2')
% Task 2
% ready to integrate area of intersection
% of red fcn (jy) above green line
% Determine the two points where green line
% intersects "jy".

AF2 = @(t) jy(t)-52;
root1=fzero(AF2,0.2)
root2=fzero(AF2,0.5)
T2AREA=integral(AF2,root1,root2)
disp('pause')
pause
disp('Task 3')

% Task 3
% ready to integrate area of intersection
% of red fcn (jy) below green line and 
% above blue line
% Determine the two points where jy
% intersects blue line.

AF3=@(t) jy(t) - 8;
root3=fzero(AF3,0)
root4=fzero(AF3,1.1)
T3BIGAREA=integral(AF3,root3,root4)
% Now have all the area above the Green line
% (T2AREA)
% and all area above the blue line (T3BIGAREA)
% We only want area in between
T3AREA= T3BIGAREA - T2AREA


