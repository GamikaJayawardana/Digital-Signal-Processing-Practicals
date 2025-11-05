x = [1 2 3 4]; 
h = [1 2 1 2];  

m = length(x);   
n = length(h); 

L = m + n - 1;   
N = max(m, n);

x_padded = [x zeros(1, L - N)]; 
h_padded = [h zeros(1, L - N)];  

ylc_fft = ifft(fft(x_padded) .* fft(h_padded));  

ycc_fft = ifft(fft(x).* fft(h));

figure;

subplot(3, 1, 1);
stem(0:m-1, x, 'b', 'DisplayName', 'x[n]');
hold on;
stem(0:m-1, h, 'r', 'DisplayName', 'h[n]');
hold off;
title('Input Sequences (FFT-based)');
xlabel('Sample Index');
ylabel('Amplitude');
legend;

subplot(3, 1, 2);
stem(0:L-1, ylc_fft, 'g');
title('FFT-based Linear Convolution');
xlabel('Sample Index');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(0:N-1, ycc_fft, 'm');
title('FFT-based Circular Convolution');
xlabel('Sample Index');
ylabel('Amplitude');