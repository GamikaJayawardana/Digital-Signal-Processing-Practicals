n=80;
fp = [0.008 0.08];
b = fir1(n, fp, 'bandpass',''hamming(N+1));

[h,w] = freqz(b, 1, 512);

plot(w/pi, 20*log(abs(h)));


