clear; clc;

%Obtenção das equações de estado a partir da função transferência
%Y(s) =      s^3 + 4s^2 + 5
%---    -----------------------
%U(s)   s^4 + 17s^3 + 5s^2 +20s

%num = [1 4 0 5];
%den = [1 17 5 20 0];

syms a
syms b
syms k
syms z

num = [0 1 3];
den = [1 3 2];

[A, B, C ,D] = tf2ss(num,den);


p = [0 1; 1 0];
A = inv(p)*A*p
B = inv(p)*B
C = C*p

SYMS = ss(A,B,C,D)
csys = canon(SYMS,'companion')