% Funkcja Rosenbrocka
clear all; close all;

rosenbrock = @(x)100*(x(:,2) - x(:,1).^2).^2 + (1 - x(:,1)).^2; % Vectorized function

m=128; cm_plasma=plasma(m); cm_inferno=inferno(m); % color maps for gray printing
cm = inferno;
  
figure1 = figure('Position',[1 200 600 300]);
colormap('gray');
axis square;
R = 0:.002:1;
TH = 2*pi*(0:.002:1);
X = R'*cos(TH);
Y = R'*sin(TH);
Z = log(1 + rosenbrock([X(:),Y(:)]));
Z = reshape(Z,size(X));

% Create subplot
subplot1 = subplot(1,2,1,'Parent',figure1);
view([124 34]);
grid('on');
title("Widok #1 funkcji Rosenbrocka")
hold on;

% Create surface
surf(X,Y,Z,'Parent',subplot1,'LineStyle','none');
% Create contour
contour(X,Y,Z,'Parent',subplot1);
% Create subplot
subplot2 = subplot(1,2,2,'Parent',figure1);
view([234 34]);
grid('on');
title("Widok #2 funkcji Rosenbrocka")
hold on

% Create surface
surf(X,Y,Z,'Parent',subplot2,'LineStyle','none');
% Create contour
contour(X,Y,Z,'Parent',subplot2);
% Create textarrow
annotation(figure1,'textarrow',[0.4 0.31],...
[0.055 0.16],...
'String',{'Minimum at (0.7864,0.6177)'});
% Create arrow
annotation(figure1,'arrow',[0.59 0.62],...
[0.065 0.34]);
colormap(cm); 
hold off