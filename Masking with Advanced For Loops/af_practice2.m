

clc,clear
%Function Handle is "v"
%argument is "t"
%expression is "exp(sin(t))-1
v = @(t) exp(sin(t)) - 1;  
AA=4;
 
velocity_4 = v(AA);
fprintf('The velocity of the car at t= 4sec is %f m/s.\n\n',velocity_4);
 disp('pause')
 pause
 %now change where we want o evaluate "v"
 BB=8;
 velocity_8 = v(BB);
 fprintf('The velocity of the car at t= 8sec is %f m/s.\n\n',velocity_8);
disp('pause')
 pause
 %now evaluate "v" for many values
 CC=[1,2,3,4,5,6,7,8,9,10];
 
velocity_1_10=v(CC);
fprintf('The velocity of the car at t= [1,2,3...10]sec is %f m/s.\n\n',velocity_1_10);
disp('pause')
pause
% now create anonymous function with multi-variables
%Function Handle is "Line_Y"
%arguments are "x,m,b"
%expression is "m.*x +b
Line_Y= @(x,m,b) m.*x +b;
mslope=8;
bintercept=5;
x_independant=1;
y_dependant=Line_Y(x_independant,mslope,bintercept)
disp('pause')
pause
%repeat for a number of "xx" values
xx=[1,2,3,4,5,6,7,8,9,10];
y_10_dependant=Line_Y(xx,mslope,bintercept)
disp('pause')
pause
% Now lets use anonymous functions
%with fzero and integral
%Function Handle is "v"
%argument is "t"
%expression is "exp(cos(t))-1.5
w = @(t) exp(cos(t)) - 1.5;  
%evaluate w for many values
DD=[0.1:0.1:8.0];
vel_1_8=w(DD);
% I am going to plot the result. Why ?

figure(88)
plot(DD,vel_1_8)
%Look at the plot. Where does the plot cross the
%horizontal axis ?
% Looks like near 1 and 5. 
% the crossing points are the .....?
%ROOTS...good thinking

disp('pause')
pause

%fzero will assist you in finding the roots
% you simply make a "good" guess
% why is "w" used below ??
root1 = fzero(w, 1)
root2 = fzero(w, 5)
disp('pause')
pause
%use the output (root1 and root 2) and integrate
% to determine displacement
displacement=integral(w,root1,root2)

