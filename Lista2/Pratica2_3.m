%Questao 3

close all;
clear;
clc;

x = 3;
y = zeros(1,4);
y(1) = 10;
n = -1;
cont = 1;
for k = 1:x
    if (n<0)
        y(k+1) = 2*y(cont);
    else
        y(k+1) = 2*y(cont) +2;   
    end
    cont = cont+1;
    disp(y(cont));
end