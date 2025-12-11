t = -2*pi:0.1:2*pi;
theta = pi/4;

y_original = sin(t);
y_shifted = sin(t + theta);

plot(t, y_original, 'b');
hold on;
plot(t, y_shifted, '--r');
legend('original','shifted');