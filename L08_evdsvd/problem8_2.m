% evd_elipsa.m
clear all; close all; clc;
N = 1000;
% Elipsa - symetryczna macierz kowariancji elipsy
S = [ 1 0.5; ... % do zmiany
    0.5 1 ]; % 
x = elipsa(S,1,N); 
figure; plot(x(1,:),x(2,:), 'ro'); grid; hold on;
x = x .* (2*(rand(1,N)-0.5));
%x = x .* (0.33*(randn(1,N)));
plot(x(1,:),x(2,:), 'b*'); grid;
xlabel('x'); ylabel('y'); title('Circle/Ellipse'); grid; axis square


% Elipsa - symetryczna macierz kowariancji elipsy
S = [ 1 0.5; ... % do zmiany
    0.5 1 ]; % 
x = elipsa(S,10,N); % jak zmieniłem wartośc 
figure; plot(x(1,:),x(2,:), 'ro'); grid; hold on;
x = x .* (2*(rand(1,N)-0.5));
%x = x .* (0.33*(randn(1,N)));
plot(x(1,:),x(2,:), 'b*'); grid;
xlabel('x'); ylabel('y'); title('Circle/Ellipse'); grid; axis square

function x = elipsa(S,r,N)
    [V,D] = eig(S) % EVD
    V = V*sqrt(r*D); % macierz transformacji y (okrag) --> x (elipsa)
    alfa = linspace(0,2*pi,N); % katy okregu
    x = V * [ cos(alfa); sin(alfa)]; % transformacja punktow okregu na elipse
end


%  S == prawy dolny zmiana wysokości i nachylenia, lewy górny zmiana szerkości i nachylenia, prawy górny zmiana szerokości i nachylenia lewy dolny zmiana długości i nachylenia
%  x = elipsa(S,10,N); jak zmieniłem wartość to inaczej się to obraca więc
%  ma wpływ :))

