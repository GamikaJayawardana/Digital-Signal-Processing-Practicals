x = -10:0.1:10;
x1 = x(x < -3);
y1 = x1 + 6;
x2 = x(x >= -3 & x <= 3);
y2 = 3 * ones(size(x2));
x3 = x(x > 3);
y3 = x3;
figure;
plot(x1, y1, '-b', 'LineWidth', 1.5); hold on;
plot(x2, y2, '--g', 'LineWidth', 1.5);
plot(x3, y3, '-r', 'LineWidth', 1.5);

grid on;
xlabel('x');
ylabel('y');
title('Piecewise Function');

legend('y = x + 6 ', 'y = 3 ', 'y = x ');
