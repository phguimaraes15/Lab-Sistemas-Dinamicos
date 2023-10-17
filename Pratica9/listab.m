% d)

clear;
clc;
close all;

dados = load('dadosordem1.txt');

ts = dados(:,1); 

entrada = dados(:,2); 
saida = dados(:,3);

k = mean(dados(end-20:end));
kNormalizado = k/k;

entradaNormalizada = (entrada - 0)/(max(entrada) - 0);
saidaNormalizada = (saida - min(saida))/(max(saida) - min(saida));

%-----------------------------------------------------------------

figure (1);
plot(ts, saidaNormalizada); %tetaZN e tauZN obstidos pelo gráfico

tetaZN = 6.1;
tauZN = 14.6;
s = tf('s');

numZN = k*exp(-s*tetaZN);
denZN = ((tauZN*s) + 1);

FtZN = numZN/denZN;
yFtZN = step(FtZN,ts);

mseZN = mean((saida - yFtZN).^2);
fprintf(' mseZN: %d \n',mseZN);
