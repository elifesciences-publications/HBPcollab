function createfigure(X1, YMatrix1, X2, Y1, X3)
%CREATEFIGURE(X1, YMATRIX1, X2, Y1, X3)
%  X1:  vector of x data
%  YMATRIX1:  matrix of y data
%  X2:  vector of x data
%  Y1:  vector of y data
%  X3:  vector of x data

%  Auto-generated by MATLAB on 26-Apr-2017 18:19:03

% Create figure
figure1 = figure('Color',[1 1 1]);

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to plot
plot1 = plot(X1,YMatrix1,'LineWidth',2);
set(plot1(1),'DisplayName','Unwrapped');
set(plot1(2),'DisplayName','Wrapped');

% Create plot
plot(X2,Y1,'DisplayName','Wrapped','LineStyle','--','Color',[1 0 0]);

% Create plot
plot(X3,Y1,'DisplayName','Unwrapped','LineStyle','--','Color',[1 0 0]);

% Uncomment the following line to preserve the X-limits of the axes
% xlim(axes1,[-9.42477796076938 9.42477796076938]);
% Uncomment the following line to preserve the Y-limits of the axes
% ylim(axes1,[0 0.22]);
box(axes1,'on');
axis(axes1,'square');
% Set the remaining axes properties
set(axes1,'FontSize',16,'XTick',...
    [-9.42477796076938 -6.28318530717959 -3.14159265358979 0 3.14159265358979 6.28318530717959 9.42477796076938],...
    'XTickLabel',{'-3\pi','-2\pi','-\pi','0','\pi','2\pi','3\pi'},'YTick',[]);
% Create legend
legend1 = legend(axes1,'show');
set(legend1,...
    'Position',[0.392261902129547 0.16325396152045 0.248928575617926 0.128809526625134]);

