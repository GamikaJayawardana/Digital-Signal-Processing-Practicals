f0 = 8;
fs = 400;
duration = 1;

t = 0:1/fs:duration-1/fs;
N = length(t);

square_wave = square(2*pi*f0*t);

X = fft(square_wave, N);
freq = (0:N-1) * fs / N;

figure;
subplot(2,2,1);
stem(freq(1:N/2), abs(X(1:N/2)), 'k', 'LineWidth', 1);
title('Magnitude Spectrum');
xlabel('Frequency (Hz)'); ylabel('Magnitude');

subplot(2,2,2);
stem(freq(1:N/2), angle(X(1:N/2)), 'g', 'LineWidth', 1);
title('Phase Spectrum');
xlabel('Frequency (Hz)'); ylabel('Phase (rad)');

subplot(2,2,3);
stem(freq(1:N/2), real(X(1:N/2)), 'y', 'LineWidth', 1);
title('Real Part of FFT');
xlabel('Frequency (Hz)'); ylabel('Real');

subplot(2,2,4);
stem(freq(1:N/2), imag(X(1:N/2)), 'b', 'LineWidth', 1);
title('Imaginary Part of FFT');
xlabel('Frequency (Hz)'); ylabel('Imaginary');

