x_original = [1, 0, 1, 0];
N_original = length(x_original);

x_padded5 = [x_original, 0];
x_padded10 = [x_original, zeros(1, 6)];

X_original = fft(x_original);
X_padded5 = fft(x_padded5);
X_padded10 = fft(x_padded10);

x_recon_original = ifft(X_original);
x_recon_padded5 = ifft(X_padded5);
x_recon_padded10 = ifft(X_padded10);

figure;

subplot(2,3,1);
stem(0:N_original-1, x_original, 'k', 'filled', 'LineWidth', 2);
title('Original Sequence (N=4)');
xlabel('n'); ylabel('Amplitude');
xlim([-0.5, 3.5]);

subplot(2,3,2);
stem(0:4, x_padded5, 'k', 'filled', 'LineWidth', 2);
title('Zero-Padded Sequence (N=5)');
xlabel('n'); ylabel('Amplitude');
xlim([-0.5, 4.5]);

subplot(2,3,3);
stem(0:9, x_padded10, 'k', 'filled', 'LineWidth', 2);
title('Zero-Padded Sequence (N=10)');
xlabel('n'); ylabel('Amplitude');
xlim([-0.5, 9.5]);

subplot(2,3,4);
freq_orig = 0:N_original-1;
freq_pad5 = 0:4;
freq_pad10 = 0:9;

stem(freq_orig, abs(X_original), 'r', 'filled', 'LineWidth', 2);
hold on;
stem(freq_pad5, abs(X_padded5), 'b', 'LineWidth', 2);
stem(freq_pad10, abs(X_padded10), 'g', 'LineWidth', 2);
title('Magnitude Spectrum');
xlabel('Frequency Bin'); ylabel('Magnitude');
legend('N=4', 'N=5', 'N=10');

subplot(2,3,5);
stem(freq_orig, angle(X_original), 'r', 'filled', 'LineWidth', 2);
hold on;
stem(freq_pad5, angle(X_padded5), 'b', 'LineWidth', 2);
stem(freq_pad10, angle(X_padded10), 'g', 'LineWidth', 2);
title('Phase Spectrum');
xlabel('Frequency Bin'); ylabel('Phase (rad)');
legend('N=4', 'N=5', 'N=10');

subplot(2,3,6);
stem(0:N_original-1, real(x_recon_original), 'r', 'filled', 'LineWidth', 2);
hold on;
stem(0:4, real(x_recon_padded5), 'b', 'LineWidth', 2);
stem(0:9, real(x_recon_padded10), 'g', 'LineWidth', 2);
title('Reconstructed Signals');
xlabel('n'); ylabel('Amplitude');
legend('N=4', 'N=5', 'N=10');

error_original = max(abs(real(x_recon_original) - x_original));
error_padded5 = max(abs(real(x_recon_padded5(1:4)) - x_original));
error_padded10 = max(abs(real(x_recon_padded10(1:4)) - x_original));

fprintf('Maximum absolute differences:\n');
fprintf('Original: %.10f\n', error_original);
fprintf('Padded to 5: %.10f\n', error_padded5);
fprintf('Padded to 10: %.10f\n', error_padded10);
