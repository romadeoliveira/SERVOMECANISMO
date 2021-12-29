clear; clc;
syms k z p a s

%Primeira fun��o de trnasfer�ncia G1(s)
num1 = [500 6500 26000 30000];
den1 = [1 30 296 960 0];
printsys(num1, den1);

%Segunda fun��o de transfer�ncia G2(s)
num2 = 1;
den2 = [1];
printsys(num2, den2)


%Configura��o cascata
%[num,den] = series(num1, den1, num2, den2);
%printsys(num, den)

%Configura��o paralelo
%[num, den] = parallel(num1, den1, num2, den2);
%printsys(num,den)

%Configural��o malha fechada
[num,den] = feedback(num1, den1, num2, den2);
printsys(num,den)
