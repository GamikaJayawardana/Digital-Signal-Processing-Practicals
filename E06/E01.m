x = [1 0 -1];
h = [2 1];

N = max(length(x), length(h));

% --- Zero-padding for FFT method ---
x_padded_fft = [x, zeros(1, N - length(x))];
h_padded_fft = [h, zeros(1, N - length(h))];

% --- (a) Circular Convolution using FFT ---
y_fft = ifft(fft(x_padded_fft) .* fft(h_padded_fft));

% --- Built-in circular convolution (no manual padding) ---
y_builtin_no_padding = cconv(x, h, N);

% --- (c) Built-in circular convolution with manual zero-padding ---
h_padded = [h, zeros(1, length(x) - length(h))];
y_builtin_padded = cconv(x, h_padded, length(x));

% --- Display numerical results ---
disp('Circular Convolution using FFT:');
disp(y_fft);
disp('Built-in Circular Convolution (without manual padding):');
disp(y_builtin_no_padding);
disp('Built-in Circular Convolution with Manual Zero-Padding:');
disp(y_builtin_padded);

% --- (b) Plot all results using subplots ---
figure;

% Subplot 1: FFT Method
subplot(3,1,1);
stem(0:N-1, y_fft, 'r', 'filled');
title('Circular Convolution using FFT');
xlabel('Sample Index (n)');
ylabel('Amplitude');
grid on;

% Subplot 2: Built-in cconv (No Padding)
subplot(3,1,2);
stem(0:N-1, y_builtin_no_padding, 'r', 'filled');
title('Built-in Circular Convolution (No Padding)');
xlabel('Sample Index (n)');
ylabel('Amplitude');
grid on;

% Subplot 3: Built-in cconv (With Manual Zero-Padding)
subplot(3,1,3);
stem(0:length(y_builtin_padded)-1, y_builtin_padded, 'r', 'filled');
title('Built-in Circular Convolution (With Manual Zero-Padding)');
xlabel('Sample Index (n)');
ylabel('Amplitude');
grid on;

sgtitle('Circular Convolution Comparison (All Methods)');
