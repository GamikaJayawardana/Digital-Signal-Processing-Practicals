x1 = [1 0 -1];
h1 = [2 1];

% i.
N1 = max(length(x1), length(h1));
y1_fft = ifft(fft(x1, N1) .* fft(h1, N1));

% ii.
y1_builtin = cconv(x1, h1, N1);

disp('FFT Circular Convolution:'); disp(y1_fft);
disp('Built-In Circular Convolution:'); disp(y1_builtin);

figure;
stem(0:N1-1, y1_fft, 'r', 'LineWidth', 1.5); hold on;
stem(0:N1-1, y1_builtin, 'rx', 'LineWidth', 1.5);
legend('FFT Method', 'Built-In cconv');
title('Circular Convolution Results');
xlabel('Sample Index'); ylabel('Amplitude');

x1_pad = [x1 0];
h1_pad = [h1 0];
N2 = max(length(x1_pad), length(h1_pad));
y1_fft_zp = ifft(fft(x1_pad, N2) .* fft(h1_pad, N2));
y1_builtin_zp = cconv(x1_pad, h1_pad, N2);

disp('FFT with Zero-Padding:'); disp(y1_fft_zp);
disp('Built-In with Zero-Padding:'); disp(y1_builtin_zp);