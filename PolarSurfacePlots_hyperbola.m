
[r,t] = meshgrid(0:.3:5,0:pi/15:(2*pi));
R=5;
% Convert to Cartesian
x = r.*cos(t);
y = r.*sin(t);
z = (R^2-(x.^2+y.^2))
% h = polar(x,y);
hold on;

% Hide the POLAR function data and leave annotations
% set(h,'Visible','off')
% Turn off axes and set square aspect ratio
% axis equal
axis off
surf(x,y,-z)
% alpha 0.5
