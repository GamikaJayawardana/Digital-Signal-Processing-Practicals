alphap = 1.5;
alphas = 45;

fp1 = 140;
fs1 = 148;
fs2 = 152;
fp2 = 160;

f = 1200;

omp = [2*fp1/f 2*fp2/f];
oms = [2*fs1/f 2*fs2/f];

[N, Wn] = buttord(omp, oms, alphap, alphas);

disp('Order of filter =');
disp(N);
disp('Cutoff frequencies = ');
disp(Wn);

[b, a] = butter(N, Wn, 'stop');

disp('Filter coefficients b ='); disp(b);
disp('Filter coefficients a ='); disp(a);

w = 0:0.01:pi;
[h, om] = freqz(b, a, w, 'whole');
m = abs(h);
an = angle(h);

[bz, az] = bilinear(b, a, f);

figure;
subplot(2,1,1);
plot(w/pi, m, 'y-.', 'LineWidth', 1);
xlabel('Normalized Frequency');
ylabel('Magnitude');
title('Butterworth Band-stop Filter Response');
grid on;

subplot(2,1,2);
plot(w/pi, mag2db(m), 'b--', 'LineWidth', 1);
xlabel('Normalized Frequency');
ylabel('dB');
title('Butterworth Band-stop Filter Response (dB)');
grid on;
