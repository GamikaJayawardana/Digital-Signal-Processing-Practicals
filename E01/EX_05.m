x = linspace(-5, 5, 100);
y = linspace(-5, 5, 100);
[X, Y] = meshgrid(x, y);
Z = exp(-(X.^2/4 + Y.^2/4));

figure;
surf(X, Y, Z);

xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axix(Gaussian Function');
title('3D Surface Plot of Gaussian Function');
grid on;

xlim([-5 5]);
ylim([-5 5]);
zlim([0 1]);
