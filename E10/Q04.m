N = 80;
fp = [0.008 0.08];
fs = 500;
a = 1;

x_fir = fir1(N, fp, 'bandpass', hamming(N+1));

figure;
[h_ham, w_ham] = freqz(x_fir, 1, 1024, fs);
[h_fda, w_fda] = freqz(b, a, 1024, fs);

plot(w_ham*fs/(2*pi), 20*log10(abs(h_ham)), 'r-'); hold on;
plot(w_fda*fs/(2*pi), 20*log10(abs(h_fda)), 'b-'); 
xlabel('Frequency(Hz)');
ylabel('Magnitude(db)');
title('Magnitude Response');
grid on;

legend('Hamming FIR','FDA Tool');



