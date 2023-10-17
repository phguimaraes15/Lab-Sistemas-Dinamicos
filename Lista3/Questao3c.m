clc;
close all;

Ts = tf(1,[1 4 3]);
subplot(5,1,1);
t1 = [0:0.1:1]; 
y1= step(Ts,t1);%T
plot(t1,y1);xlabel('Tempo(s)');ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,2);
t2 = [0:0.1:2]; %2T
y2= step(Ts,t2);
plot(t2,y2);ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,3);
t3 = [0:0.1:3]; %3T
y3= step(Ts,t3);
plot(t3,y3);ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,4);
t4 = [0:0.1:4]; %4T
y4= step(Ts,t4);
plot(t4,y4);ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
subplot(5,1,5);
t5 = [0:0.1:5]; %5T
y5= step(Ts,t5);
plot(t5,y5);ylabel('Amplitude');title('Resposta ao degrau'); grid('on');
