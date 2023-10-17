%Questao 4

clc;
clear;
close all;

y = zeros(1, 12); 
y(1) = 1; 
y(2) = 2; 
x = 0:11; 

for n = 1:10
    y(n+2) = y(n+1) - 0.24*y(n) + x(n+2) - 2*x(n+1);
end

disp('Termos da sequência y[n]:')
disp(y(3:end))

plot(y)
title('Gráfico da sequência y[n]')
xlabel('n')
ylabel('y[n]')