

clc,clear
v = @(t) exp(sin(t)) - 1;
velocity = v(4);
fprintf('The velocity of the car at t=4s is %f m/s.\n\n',velocity);
pause; disp('Press any key to continue');