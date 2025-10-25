dt = 0.001;
t = 0:dt:1;

x_clean = sin(2*pi*50*t) + sin(2*pi*120*t);
y_noisy = x_clean + 2.5*randn(size(t));

N = length(t);
Y = fft(y_noisy, N);
PSD = Y .* conj(Y) / N;
freq = (0:N-1) / (dt*N);

threshold = 60;
indices = PSD > threshold;
PSD_filtered = PSD .* indices;

figure(3);
plot(freq, PSD, 'b-', 'LineWidth', 1);
hold on;
plot(freq, PSD_filtered, 'r-', 'LineWidth', 1.5);

xlabel('Frequency (Hz)');
title('Power Spectrums');
legend('Noisy', 'Filtered');
xlim([0, 500]);
ylim([0, 350]);
