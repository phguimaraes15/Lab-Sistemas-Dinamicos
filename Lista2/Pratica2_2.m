%Questao 2

clear;
clc;
close all;

n = 0:10;
x_a = (-1).^n;
x_b = cos(pi*n/12 + pi/4);

subplot(6,1,1);
stem(n,x_a,'k');
ylabel('x_a[n]');

subplot(6,1,2);
stem(n,x_b,'k');
ylabel('x_b[n]');

subplot(6,1,3);
stairs(n,x_a,'k');
ylabel('x_a[n]');

subplot(6,1,4);
stairs(n,x_b,'k');
ylabel('x_b[n]');

subplot(6,1,5);
bar(n,x_a,'k');
ylabel('x_a[n]');

subplot(6,1,6);
bar(n,x_b,'k');
ylabel('x_b[n]');



