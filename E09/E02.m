Fs = 10000;      % sampling frequency
NFFT = 4096;     % frequency resolution

% Original filter frequency response
[H_orig, f] = freqz(a, b, NFFT, Fs);

% Modified filter frequency response
[H_mod, ~] = freqz(c, d, NFFT, Fs);

% Plot both magnitude responses on same graph
figure;
plot(f, 20*log10(abs(H_orig)), 'LineWidth', 1.6); 
hold on;
plot(f, 20*log10(abs(H_mod)), '--', 'LineWidth', 1.6);
hold off;

grid on;
title('Original vs Modified Filter - Magnitude Response');
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
legend('Original FIR', 'Modified (Pole + Zero)');

% Restrict the frequency axis from 0 to 5 kHz
xlim([0 5000]);
