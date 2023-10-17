%Lista 1 - Pedro Henrique Guimaraes Carvalho - 22B
%Questao 1

clear;
clc;

a = [1 1 6; 5 -2 1; 8 2 -3];
b = [2 9; -5 -1; 9 2];
x = input('Coloque qual matriz voce deseja comparar (a/b) = ')
tam = size(x);

if tam(1,1) == tam(1,2)
disp('Quadratica');
else
disp('Nao quadratica');
end

dois_a = find(a==2);
dois_b = find(b==2);
disp('Numeros dois na matriz A: ');
disp(dois_a);
disp('Numeros dois na matriz B: ');
disp(dois_b);

negativo_a = find(a<0);
negativo_b = find(b<0);
disp('Numeros negativos na matriz A: ');
disp(negativo_a);
disp('Numeros negativos na matriz B: ');
disp(negativo_b);