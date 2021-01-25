clc, clear all
spiderman=imread('spiderman.jpg');
figure(1011),image(spiderman),title('Spiderman')
disp('See Figure 1011, Spiderman');
disp('pause');
pause;
NYC=imread('nyc.jpg');
figure(1012),image(NYC),title('NYC')
disp('See Figure 1012, NYC');
disp('pause');
disp(' ')
pause;

[r_spiderman,c_spiderman,d_spiderman]=size(spiderman);
[r_NYC,c_NYC,d_NYC]=size(NYC);
disp('pause')
disp(' ')
pause;

red_spiderman=spiderman(:,:,1);
green_spiderman=spiderman(:,:,2);
blue_spiderman=spiderman(:,:,3);

altered_sm=spiderman;
for r = 1:1:r_spiderman
    for c = 1:1:c_spiderman
        if green_spiderman(r,c)>200 
             
            altered_sm(r,c,1:3) = NYC(r,c,1:3);
             
        end
    end
end
figure(13),image(altered_sm),title('Spiderman in NYC')
disp('See Figure 13, Siderman in NYC');
disp('pause');
disp(' ');
