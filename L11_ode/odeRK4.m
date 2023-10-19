function [t,x] = odeRK4( fun, tminmax, x0, M )
% NASZA FUNKCJA
dt = (tminmax(2)-tminmax(1))/M;      % krok w czasie
t = tminmax(1) + dt*(0:M);           % punkty czasowe do calkowania
x = zeros(length(x0),M+1);           % inicjalizacja
x(1:length(x0),1) = x0;              % pierwsze podstawienie, war. poczatkowe
for k = 1 : M                                         % PETLA - obliczanie calki
    d1 = dt * feval( fun, t(k),      x(:,k)      );   %
    d2 = dt * feval( fun, t(k)+dt/2, x(:,k)+d1/2 );   %
    d3 = dt * feval( fun, t(k)+dt/2, x(:,k)+d2/2 );   %
    d4 = dt * feval( fun, t(k)+dt,   x(:,k)+d3   );   %
    x(:,k+1) = x(:,k) + (d1 + 2*d2 + 2*d3 + d4) / 6;  % nowa wartosc calki
end
t=t'; x=x.';
