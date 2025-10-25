dt = 0.001;
t = 0:dt:1;

x_clean = sin(2*pi*50*t) + sin(2*pi*120*t);
y_noisy = x_clean + 2.5*randn(size(t));

figure;
plot(t, x_clean, 'b-', 'LineWidth', 1.5);
hold on;
plot(t, y_noisy, 'r-', 'LineWidth', 1);
legend('Clean', 'Noisy');
xlim([0, 0.25]);
ylim([-5, 5]);
