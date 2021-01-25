
% Height example in MATLAB
clc, clear
echo on
disp('Duke the plant, ID is 007')

% Initialize parameters
    % initial height in feet
h0=6;
   % initial velocity in ft/s
v0=100;
g = -32.2;   % acceleration due to gravity in ft/s/s
incr=1;
lasttime=20;

[time,maxheight]=Hfunc(h0,v0,g,incr,lasttime)

  
 
 
  