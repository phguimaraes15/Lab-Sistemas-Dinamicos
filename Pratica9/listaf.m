% f)

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

figure(1);
plot (ts, saidaNormalizada);
hold on;
plot ([0,50],[0.632,0.632],'k--');

tetaHag = 6.1;
tauHag = 10.7;
s = tf('s');

numHag = k*exp(-s*tetaHag);
denHag = ((tauHag*s) + 1);
FtH = numHag/denHag;
yFtH = step(FtH,ts);

mseH = mean((saida - yFtH).^2);
fprintf(' mseH: %d \n',mseH);