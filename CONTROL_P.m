clear; clc; %A��O DE CONTROLE PROPORCIONALkp = [1 10 20 30 50 100];t = 0:0.01:5;sz = size(kp);for n=1:sz(2)    num = kp(n);    den = [1 10 (20+kp(n))];    G = tf(num,den)    step(G,t);    hold onendtitle('Resposta ao degrau unit�rio de G(s) = kp/s^2+10s+(20+kp)','fontsize',14)ylabel('c(t)','fontsize',14)xlabel('t','fontsize',14)legend('Kp=1','Kp=10','kp=20','kp=30','kp=40','kp=100')figurekp = [2000]t = 0:0.01:5;num=kp;den=[1 10 (20+kp)];G = tf(num,den)step(G,t);title('Resposta ao degrau unit�rio de G(s)=kp/s^2+10+(20+kp)','fontsize',14)ylabel('c(t)','fontsize',14)xlabel('t','fontsize',14)legend('kp=2000')