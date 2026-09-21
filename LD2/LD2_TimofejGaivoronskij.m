% Timofej Gaivoronskij 
% EEF - 25/1
% 2026-09-14

%1

va = 10:1:15
vb = log2(va)
vc = va./vb
vd = vc'

%2
k = 1;

C_n1 = pi/2:pi/2:3*pi/2;
C_n2 = -1:1;
C_n3 = -3:-1:-5;
C_sum = zeros(1, 3)';

C = [C_n1; C_n2; C_n3]
[eil, stulp] = size(C)
for i = 1:eil
    for j = 1:stulp
        C_sum(k, 1) = C_sum(k, 1) + C(i, j);
    end
    k=k+1;
end
disp(C_sum)
%ARBA
C_sum2 = sum(C, 2)

%3
t = 0:0.002:1.2;
A = 5.5;
f = 8;
sigma = 0.8;
U1 = 3.5;
U2 = 1.5;

s=A*sin(2*pi*f*t);
n = sigma*randn(size(t));
s=s+n;

s_a = s(s>U1)
s_b = s;
s_b(abs(s_b)<U2) = 0
s_dydis = length(s)
s_a_dydis = length(s_a)
s_b_max = max(s_b)
s_b_min = min(s_b)

%P1, papildoma

n = input('Iveskite vektoriaus A ilgi: ')
A = zeros(1, n);
[eil, stulp] = size(A)
for i=1:eil
    for j=1:stulp
        tekstas = sprintf('A(%d, %d) = ', i, j);
        A(i, j) = input(tekstas)
    end
end
B = repelem(A, 4)

