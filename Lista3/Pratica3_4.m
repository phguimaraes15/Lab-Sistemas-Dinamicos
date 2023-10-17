%Questao 4

clear;
clc;
close all;

%a)

D = tf([0,1],[1,0]);
U = tf([0,1],[1,0]);
H_d = tf([0,2.5],[1,0.5]);
H_u = tf([0,2],[1,0.5]);
Ys = - series(D,H_d) + series(U,H_u)

%b) 

D = tf([0,0],[1,0]);
U = tf([0,1],[5,0]);
H_d = tf([0,2.5],[1,0.5]);
H_u = tf([0,2],[1,0.5]);
Ys = - series(D,H_d) + series(U,H_u)
step(Ys);

%c)

D = tf([0,1],[1,0]);
U = tf([0,1],[5,0]);
H_d = tf([0,2.5],[1,0.5]);
H_u = tf([0,2],[1,0.5]);
Ys = - series(D,H_d) + series(U,H_u)
step(Ys);

%d)

D = tf([0,1],[1,0]);
U = tf([0,1],[5,0]);
H_d = tf([0,2.5],[1,0.5]);
H_u = tf([0,2],[1,0.5]);
ds = tf([0,1],[1,-120]);
Ys = - series(series(D,H_d),ds) + series(U,H_u)
step(Ys);