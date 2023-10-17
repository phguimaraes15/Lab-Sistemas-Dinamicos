% h)

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

figure (4);
plot(ts, saidaNormalizada, "r");
hold on;
plot([0,50], [kNormalizado*0.632,kNormalizado*0.632],"k--");
plot([0,50], [kNormalizado*-0.2,kNormalizado*2.8],"k--");

tauInc = 15.2 - 8.2;
tetaInc = 1/tauInc;
s = tf('s');

numInc = k;
denInc = [tauInc 1];
FtInc = tf(numInc, denInc, 'inputDelay', tetaInc);

yFtinc = step(FtInc,ts);

mseInc = mean((saida - yFtinc).^2);
fprintf(' mseInc: %d \n',mseInc);