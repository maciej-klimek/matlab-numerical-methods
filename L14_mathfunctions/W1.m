% Generowanie sinusoidy metod� LUT (look-up table)
clear all; close all;

M = 10000;
dx = (pi/2)/M;               % krok dyskretyzacji x w tablicy
x = 0 : dx : pi/2;           % dyskretyzacja x: xk = x0 + k*dx
stab = sin( x );             % tablica sinusa yk=sin(xk) dla zadanych warto�ci xk

xx = 1/2*(pi/2)/M : (pi/2)/(M-1) : pi/2; % xx to inne warto�ci argument�w funkcji
s = stab( 1 + round( xx / dx ) );        % pobieramy najbli�sze warto�ci w tablicy
figure; plot(x,stab,'ro-',xx,s,'bx-');   % por�wnujemy
grid; pause

% dodaj interpolacj� ...





