clc,clear all, echo off
fc=imread('background.jpg');
[r,c,d]=size(fc);
figure(11)%background/hawaii sunset maui beach
image(fc)
disp('pause')
pause
fc1=imread('yippee.jpg');
[r1,c1,d1]=size(fc1);
figure(211)%yippee
image(fc1)
disp('pause')
pause

 
  


 
  
r,r1,c,c1,

 % fc  is maui beach
 % fc1 is yippee
  
 
 redfc1=fc1(:,:,1);
 greenfc1=fc1(:,:,2);
 bluefc1=fc1(:,:,3);
 mask_g=greenfc1>240;% finding green on yippee
 maskfc1=cat(3,mask_g,mask_g,mask_g);
 yippe_beach=fc1;
 yippe_beach(maskfc1)=fc(maskfc1);
 %take same locations on maui beach
 %and place "RGB"values on yippee
 figure(287),image(yippe_beach)
 disp('thank you')
 disp('the end')
 
 
 
