%Lista 3 - Pedro Henrique Guimaraes Carvalho
%Questao 1

clear;
clc;
close all;

s = tf('s');
p = (s^2 + 2*s + 1);
q = (s + 1);

%a)

a = p*q;
disp(a);

%b)

num = [1 1];
den = [1 2 1];
g = tf(num,den);
zeros = zero(g);
polos = pole(g);
disp("Polos: ");
disp(polos);
disp("Zeros: ");
disp(zeros);

%c)

frsp = evalfr (p, -1);

%d)

pzmap (g);
grid on;

