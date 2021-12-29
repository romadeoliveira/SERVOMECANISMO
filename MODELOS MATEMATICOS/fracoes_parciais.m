clear; clc;

syms s %Declara��o de vari�vel simb�lica;
expand((s+1)*(s+3)*(s+5)); %Expande a s^3+9*s^2+23*s+15;

% Fun��es parciais
%
% B(s)     b0s^n + b1s^n-1 + ... + bn
% ---- = ------------------------------------
% A(s)     s^n + a1s^n-1 + ... + an
%
% num = [b0 b1 ... bn]
% den = [1 a1 ... an]

num =[4 2]; % s+7
den = [0.4 2.4 3.1 1]; % s^3+9*s^2+23*s+15
[r,p,k] = residue(num,den) % res�duos(r), p�los(p) e termo direto(k) de B(s)/A(s)

% res�duos(r), p�los(p) e termo direto(k) de B(s)/A(s)
% B(s)     r(1)     r(2)           r(n)
% ----- = ------ + ------ + ... + ------ + k(s)
% A(s)    s-p(1)    s-p(2)        s-p(n)

[num, den] = residue(r,p,k); % converte a expans�o da fra��o parcial � forma polinomial
printsys(num,den,'s'); % apresenta num/den em termos da rela��o polinomial em s
 %Declara��o de F(s) usando Matlab simb�lico
Fs = str2sym('(2*s+12)/(s^2+2*s+5)');

Ft = simplify(ilaplace(Fs));

FS = simplify(laplace(Ft));