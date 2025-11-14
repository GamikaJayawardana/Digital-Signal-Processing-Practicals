alphas = 25;
alphap = 1.2;
fp = 600;
fs = 1000;
f = 5000;

% Normalize
omp = 2 * fp / f;
oms = 2 * fs / f;

% Order & cutoff
[N, Wn] = cheb2ord(omp, oms, alphap, alphas);

disp('Order of the filter n =');
disp(N);
disp('Cutoff frequency Wn = ');
disp(Wn);

% Design Chebyshev Type II high-pass
[b, a] = cheby2(N, alphas, Wn, 'high');

disp('Filter coefficients b =');
disp(b);
disp('Filter coefficients a =');
disp(a);

w = 0:0.01:pi;
[h, om] = freqz(b, a, w, 'whole');
m = abs(h);
an = angle(h);

[bz, az] = bilinear(b, a, f);

figure;
subplot(2,1,1);
plot(w/pi, mag2db(m), '-g', 'LineWidth', 1);
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('Chebyshev Type II High-pass Filter Frequency Response');
grid on;

subplot(2,1,2);
plot(w/pi, an, '-r', 'LineWidth', 1);
xlabel('Normalized Frequency');
ylabel('Phase in Radians');
title('Chebyshev Type II High-pass Filter Phase Response');
grid on;
