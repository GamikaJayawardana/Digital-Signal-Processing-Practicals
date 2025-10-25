f0 = 8;
fs = 400;
duration = 1;

t = 0:1/fs:duration-1/fs;
N = length(t);

square_wave = square(2*pi*f0*t);

X = fft(square_wave, N);
freq = (0:N-1) * fs / N;

X_filtered = zeros(1, N);
harmonic_indices = [1, 3, 5, 7]; % Harmonics to keep

for k = harmonic_indices
    freq_component = k * f0;
    idx = round(freq_component * N / fs) + 1;
    if idx <= N/2
        X_filtered(idx) = X(idx);
        X_filtered(N - idx + 2) = X(N - idx + 2); % Symmetric component
    end
end

square_reconstructed = real(ifft(X_filtered));

figure;
plot(t, square_wave, 'b-', 'LineWidth', 1.5, 'DisplayName', 'Original Square Wave');
hold on;
plot(t, square_reconstructed, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Reconstructed');
xlabel('Time (s)');
ylabel('Amplitude');
title('Square Wave Reconstruction using Selected Harmonics');
legend('show');
grid on;
xlim([0, 0.5]);

mse = mean((square_wave - square_reconstructed).^2);
fprintf('Mean Squared Error: %.6f\n', mse);
