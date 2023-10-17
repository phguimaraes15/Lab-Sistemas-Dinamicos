% g)

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

figure (3);
plot(ts, saidaNormalizada);
hold on;
plot([0,50], [kNormalizado*0.853,kNormalizado*0.853],"k--");
plot([0,50], [kNormalizado*0.353,kNormalizado*0.353],"k--");

tauSund = 0.67*(26.46 - 8.85);
tetaSund = (1.3*8.85) - (0.29*26.46);
s = tf('s');


numSund = k*exp(-s*tetaSund);
denSund = ((tauSund*s) + 1);
FtSund = numSund/denSund;

yFtSund = step(FtSund,ts);

mseSund = mean((saida - yFtSund).^2);
fprintf(' mseSund: %d \n',mseSund);