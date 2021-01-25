clc,clear,close all
 
eggs=[20 22 34 12 11 56 55 80 90 64 76 83 29 11 9 2 99 101 54];
small=30;
medium=60;
x=1;
y=1;
z=1;
 
for i=1:1:length(eggs)
    if eggs(i)<=small
        x;
        small_vector(x)=eggs(i);
        x=x+1;
        
    elseif eggs(i)>small & eggs(i)<medium
        y;
        medium_vector(y)=eggs(i);
        y=y+1;
    else
        large_vector(z)=eggs(i);
        z=z+1;
    end
end
small_vector
medium_vector
large_vector