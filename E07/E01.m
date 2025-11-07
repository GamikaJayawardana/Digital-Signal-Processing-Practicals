clc; close all; clear;

n = 0:199; 
x = cos(0.3*pi*n) + cos(0.6*pi*n) + cos(0.9*pi*n);

%--(a)--
figure; 
plot(n, x, 'g', 'LineWidth',1.3); grid on;
title('Input Multi-tone Signal x[n]');
xlabel('n'); ylabel('Amplitude');

fs1 = 0.5; fs2 = 0.7;    
N = 40;                  
b = fir1(N, [fs1 fs2], 'stop', hamming(N+1));

w0 = 0:0.01:pi;          
h = freqz(b, 1, w0);

%--(b)--
figure;
plot(w0/pi, 20*log10(abs(h)+eps), 'b', 'LineWidth',1.6); grid on;
title('Hamming Window Band-Stop Filter Response');
xlabel('Normalized Frequency (\times\pi rad/sample)');
ylabel('Magnitude (dB)');
xlim([0 1]);

y = filter(b, 1, x);

%--(c)--
figure;

subplot(2,1,1);
plot(abs(fftshift(fft(x))), 'm', 'LineWidth',1.4); grid on;
title('Magnitude Spectrum of Input Signal');
xlabel('Frequency Index'); ylabel('|X(f)|');

subplot(2,1,2);
plot(abs(fftshift(fft(y))), 'm', 'LineWidth',1.4); grid on;
title('Magnitude Spectrum of Filtered Signal');
xlabel('Frequency Index'); ylabel('|Y(f)|');

sgtitle('Effect of Hamming Window Band-Stop Filter on Multi-tone Signal');
