%Questao 2

clear;
close all;
clc;

%a)

C = tf([0,1] ,[1 1]);
G = tf([0,1] ,[1 3]);

T = series(C,G);
printsys(1,[1 4 3], 's');
subplot(2,2,1);
step(T);

%b)

t = 0:0.1:10;

subplot(2,2,2);
step(T,t);

%c)

subplot(2,2,3);
step(C,t);
subplot(2,2,4);
step(G,t);

%d)

Z = tf([0,0,1],[1,0,0]);
J = series(C,Z);
step(J,t);
