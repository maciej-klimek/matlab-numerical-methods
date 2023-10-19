
% Lab 6.1: Aproksymacja - regresja liniowa

clear all; close all;

% W wyniku pomiaru otrzymano nast�puj�ce liczby ( x = numer pomiaru, y = warto�� )
x = [ 1       2      3      4      5      6      7      8      9      10    ];
y = [ 0.912   0.945  0.978  0.997  1.013  1.035  1.057  1.062  1.082  1.097 ];

%  W celu lepszej obserwacji przedstawiamy je na rysunku :

figure
plot( x, y, 'b*' );           % wykres y = funkcja(x), niebieskie �*�
title( 'DANE POMIAROWE' );    % tytu�
xlabel( 'numer probki' );     % podpis pod osi� x
xlabel( 'wartosc' );          % podpis pod osi� y
grid;                         % siatka
pause

% Interesuje nas warto�� �rednia tych liczb
% oraz ich rozrzut wok� wyliczonej warto�ci �redniej :

srednia = mean( y )	% srednia = sum( y ) / length( y )
rozrzut = std( y )	% rozrzut = sqrt( sum( ( y - srednia ).^2  ) / length( y ) )

% Dodatkowo chcieliby�my wyznaczy� wsp�czynniki a i b linii prostej
% y = a * x + b
% najlepiej aproksymuj�cej otrzymane dane (prosta regresji liniowej).

if(1)
  xt = x'; yt = y'; N = length( xt );              %   X       *  ab
  X = [ xt, ones(N,1) ];    % y(n) = a*x(n) + b =  | x(1)  1 | * | a |
  ab = X \ yt;              % y(1) = a*x(1) + b =  | x(2)  1 |   | b |          
  a = ab(1), b = ab(2),     % y(2) = a*x(2) + b =  | x(3)  1 |
else                        % ...
  xm = mean( x );	  % �rednia warto�� wektora x
  ym = mean( y );	  % �rednia warto�� wektora y
  xr = x - xm;        % wektor x - �rednia x (od ka�dego elementu)
  yr = y - ym;        % wektor y - �rednia y (od ka�dego elementu)

  a = (xr * yr') / (xr * xr')  % obliczenie wsp a prostej, to samo
                               % inaczej: a = sum( xr .* yr ) / sum( xr .* xr )
  b = ym - a * xm              % obliczenie wsp b prostej
end
  
% Teraz por�wnamy punkty eksperymentalne z lini� regresji liniowej

figure;
plot( x, y, 'bx', x, a*x+b, 'k-'  ) % niebieskie krzy�yki, linia czarna
title( 'DANE POMIAROWE' )           % tytu�
xlabel( 'numer pr�bki' )            % podpis pod osi� x
ylabel( 'warto��' )                 % podpis pod osi� y
grid                                % siatka
pause

