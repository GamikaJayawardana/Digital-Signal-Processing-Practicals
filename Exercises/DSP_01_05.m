x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);

[X,Y] = meshgrid(x,y);

Z = exp(-(X.^2/4 + Y.^2/4));

surf(X, Y, Z);
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');