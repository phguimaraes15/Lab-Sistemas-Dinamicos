%Lista 2 - Pedro Henrique Guimarães Carvalho / João Souza Snatiago
%Questao 1

clear;
clc;

syms a b c d;
matriz = [a b ; c d];

determinante = det(matriz);
inversa = inv(matriz);
traco = sum(diag(matriz));

disp("Determinate: ");
disp(determinante);
disp("Inversa: ");
disp(inversa);
disp("Traco: ");
disp(traco);