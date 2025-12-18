fs = 500;
t = 0:1/fs:2;

N = length(x);
Y = fft(x);

f = (0:N-1)*(fs/N);

plot(f,abs(Y));
title('Magnitude Spectrum of x[n]');
xlabel('Frequency (Hz)');
ylabel('|fft(x)|'); 
xlim([0 250]);
grid on;