% Pratica 9
%
% Pedro Henrique Guimarães Carvalho - 22B

% a)

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

%-------------------------------------------------------------------

j = trapz(ts, entradaNormalizada - saidaNormalizada);
fprintf(' Valor de j: %d \n',j);

tau = exp(1)*(trapz(ts(ts < j), saidaNormalizada(ts < j)));
fprintf(' Valor de tau: %d \n',tau);

teta = j - tau;
fprintf(' Valor de teta: %d \n',teta);

s = tf('s');

num = k*exp(-s*teta);

den = ((tau*s) + 1);
FtInt = num/den;
%disp(FtInt);

yFtInt = step(FtInt,ts);
%disp(yFtInt);

mseInt = mean((saida - yFtInt).^2);
fprintf(' mseInt: %d \n',mseInt);

