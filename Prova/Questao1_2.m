% Metodo de Phillips Parr
% Pedro Henrique Guimarães Carvalho

clear;
close all;
clc;

dados = load('dadosordem2sub.txt');
tsSub = dados(:,1);
entradaSub = dados(:,2);
saidaSub = dados(:,3);
k = mean(dados(end-50:end));
kn = k/k;
yn = saidaSub/k;
N = 2;
Teta = 3;

zeta = 0.6/N;
T = 10/N;
wn = 2*pi/T;

G1 = tf(kn*wn^2, [1 2*zeta*wn wn^2], 'InputDelay',Teta);
t1 = 0:1:999;
ym = step(G1, t1);
e = (yn - ym).^2;
mse = mean(e);
disp(mse);

figure(1);
plot(tsSub,yn); 
grid on;

figure(2);
step(G1, 'r');
grid on;
