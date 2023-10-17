% e)

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

figure (2);
plot(ts, saidaNormalizada, "r");
hold on;
plot([0,50], [kNormalizado*0.632,kNormalizado*0.632],"k--");
plot([0,50], [kNormalizado*0.283,kNormalizado*0.283],"k--");

tauSmith = 1.5*(16.8-8.25);
tetaSmith = 16.8 - tauSmith;
s = tf('s');

numSmith = k*exp(-s*tetaSmith);
denSmith = ((tauSmith*s) + 1);
FtSmith = numSmith/denSmith;

yFtSmith = step(FtSmith,ts);

mseSmith = mean((saida - yFtSmith).^2);
fprintf(' mseSmith: %d \n',mseSmith);