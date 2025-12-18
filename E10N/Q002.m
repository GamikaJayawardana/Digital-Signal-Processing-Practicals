%%

N = length(t);

Y = fft(noisy_x, N);
f = (0:N-1)*(fs/N);

plot(f,abs(Y));
xlim([0 250]);

%%

n=80;
fp = [0.008 0.08];
b = fir1(n, fp, 'bandpass','hamming(N+1)');

[h,w] = freqz(b, 1, 512);

plot(w/pi, 20*log(abs(h)));