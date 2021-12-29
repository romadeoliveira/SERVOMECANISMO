clear; clc;
syms k z p a s

%Primeira função de trnasferência G1(s)
num1 = [500 6500 26000 30000];
den1 = [1 30 296 960 0];
printsys(num1, den1);

%Segunda função de transferência G2(s)
num2 = 1;
den2 = [1];
printsys(num2, den2)


%Configuração cascata
%[num,den] = series(num1, den1, num2, den2);
%printsys(num, den)

%Configuração paralelo
%[num, den] = parallel(num1, den1, num2, den2);
%printsys(num,den)

%Configuralção malha fechada
[num,den] = feedback(num1, den1, num2, den2);
printsys(num,den)
