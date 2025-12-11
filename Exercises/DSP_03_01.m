fs = 1000;
t = 0:1/fs:1;

x_clean = sin(2*pi*50*t) + sin(2*pi*120*t);
x_noisy = x_clean + 2.5*randn(size(t));

subplot(5,1,1);
plot(t,x_clean);

subplot(5,1,2);
plot(t,x_noisy);

N = length(t);
Y = fft(x_noisy, N);

f = (0:N-1)*(fs/N);

subplot(5,1,3);
plot(f,abs(Y));

PSD = abs(Y).^2 / N;

Y_filtered = Y.*(PSD > 100);

subplot(5,1,4);
plot(f,abs(Y_filtered));

x_recon = ifft(Y_filtered);

subplot(5,1,5);
plot(f,x_recon);






