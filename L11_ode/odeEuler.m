function [t,x] = odeEuler( fun, tminmax, x0, M )
% fun = 'nazwa' fukcji jako lancuch znakow, np. 'fun_diff'
% NASZA FUNKCJA
dt = (tminmax(2)-tminmax(1))/M;      % krok w czasie
t = tminmax(1) + dt*(0:M);           % punkty czasowe do całkowania
x = zeros(length(x0),M+1);           % inicjalizacja
x(1:length(x0),1) = x0;              % pierwsze podstawienie, war. poczatkowe
for k = 1 : M                                          % PETLA - calkowanie metoda prostokatow
    x(:,k+1) = x(:,k) + dt*feval( fun, t(k), x(:,k) ); % nowa wartosc calki
end                                                    %
t=t'; x=x.';
