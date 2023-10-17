clc;
close all;
%Exercício 4 para C(s)
[Z,P,K] = tf2zp(1,[1 1])%Aqui é extraído o ganho da função de tranferência C(s).
Cs = tf(1,[1 1])%Aqui é declarado a função de tranferência C(s).
subplot(5,1,1);
t1 = [0:0.1:1]; %vetor t de tempo onde acontece o degrau.
y1= step(Cs,t1);%Para T
plot(t1,y1);xlabel('Tempo(s)');ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,2);
t2 = [0:0.1:2]; %Para 2T
y2= step(Cs,t2);
plot(t2,y2);xlabel('Tempo(s)');ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,3);
t3 = [0:0.1:3]; %Para 3T
y3= step(Cs,t3);
plot(t3,y3);xlabel('Tempo(s)');ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,4);
t4 = [0:0.1:4]; %Para 4T
y4= step(Cs,t4);
plot(t4,y4);xlabel('Tempo(s)');ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,5);
t5 = [0:0.1:5]; %Para 5T
y5= step(Cs,t5);
plot(t5,y5);xlabel('Tempo(s)');ylabel('Amplitude');title('Resposta ao degrau'); grid('on');