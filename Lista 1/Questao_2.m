%Lista 1 - Pedro Henrique Guimaraes Carvalho - 22B
%Questao 2

clear;
clc;

t = -10:0.01:10;
y = sin(2*pi*3.*t).*exp(-1.5*t);

plot(t,y);