clc,clear,close all
egg_weights=randi(100,1,10)

% small = eggs <= 25
% medium = 25< eggs <=75
% large = eggs > 75

small_mask=egg_weights<=25;
medium_mask=(egg_weights>25)&(egg_weights<=75);
large_mask=(egg_weights>75);

small_eggs=egg_weights(small_mask)
medium_eggs=egg_weights(medium_mask)
large_eggs=egg_weights(large_mask)

% index
find(small_eggs)
find(medium_eggs)
find(large_mask)