dt = 0.001;
t = 0:dt:1;

x_clean = sin(2*pi*50*t) + sin(2*pi*120*t);
rng(42);
y_noisy = x_clean + 2.5*randn(size(t));

N = length(t);
Y = fft(y_noisy, N);
PSD = Y .* conj(Y) / N;

threshold = 60;
indices = PSD > threshold;
Y_filtered = Y .* indices;
y_filtered = real(ifft(Y_filtered));

figure;
subplot(2,1,1);
plot(t, x_clean, 'b-', 'LineWidth', 1.5);
hold on;
plot(t, y_noisy, 'r-', 'LineWidth', 0.5);
legend('Clean', 'Noisy');
xlim([0, 0.25]);
ylim([-5, 5]);

subplot(2,1,2);
plot(t, x_clean, 'b-', 'LineWidth', 1.5);
hold on;
plot(t, y_filtered, 'r-', 'LineWidth', 1.5);
legend('Clean', 'Filtered');
xlim([0, 0.25]);
ylim([-5, 5]);

