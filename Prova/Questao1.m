% Metodo de sunderason
% Pedro Henrique Guimarães Carvalho

clear;
clc;
close all; 

dados = load('dadosordem2sub.txt');
tsSub = dados(:,1);
entradaSub = dados(:,2);
saidaSub = dados(:,3);
k = mean(dados(end-50:end));
kn = k/k;
yn = saidaSub/k;
teta = 10;
tm = 10;
n = 0.9;

teta_tau = trapz(tsSub, entradaSub- yn);
M1 = 1/(tm-teta);
mi = teta_tau;
lambda = (tm - mi)*M1;

t1 = (n^(n/(1-n)))/M1;
t2 = (n^(1/(1-n)))/M1;
tauD = mi - t1 - t2;

G1 = tf(kn, [0.9592 3.407 1], 'InputDelay', tauD);

t1 = 0:1:999;
ym = step(G1, t1);
e = (yn - ym).^2;
mse = mean(e);
disp(mse);

figure(1);
plot(tsSub, yn); 
grid on;

figure(2);
step(G1, 'r');
grid on;

% O método de Sunderason possui MSE menor que o de Phillips Parr, portanto,
% Sunderason teve um melhor desempenho.
% Sunderason = 0.2423
% Phillips Parr = 0.2475