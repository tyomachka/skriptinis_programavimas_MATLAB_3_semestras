% Timofej Gaivoronskij 
% EEF - 25/1
% 2026-09-14

% PAPRASTAS SKRIPTAS

x = 1:32;
y = x.^2;

plot(x, y, 'o-r', x, y/3, 'xb')
title('Dvi funkcijos')
xlabel('X-ai')
ylabel('F_1 [-o-]    |    F_2  [-x-]')

% DOKUMENTACIJOS PAIEŠKA

% sin(x)
help sin
doc sin
docsearch sin

% plot()
help plot
doc plot
docsearch plot

% title
help title
doc title
docsearch title

% linspace
help linspace
doc linspace
docsearch linspace

% size
help size
doc size
docsearch size

% max
help max
doc max
docsearch max

% PAPILDOMA UŽDUOTIS

N = 0;
vector = (N+1):0.5:(N+4)
A = reshape(N : N+8, 3, 3)'
a=A(3, 2)
b=A([2 3], [1 2])
c=A([1 3], [1 3])
vector_3 = vector(1:3)'
A_and_vector = [A vector_3]
