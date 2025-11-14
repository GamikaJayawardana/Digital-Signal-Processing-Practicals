alphap = 2.5;
alphas = 40;
fp = 500;
fs = 900;
f = 3000;

% Normalize
omp = 2 * fp / f;
oms = 2 * fs / f;

% Order & cutoff
[N, Wn] = cheb1ord(omp, oms, alphap, alphas);

disp('Order of the filter n =');
disp(N);
disp('Cutoff frequency Wn = ');
disp(Wn);

% Design Chebyshev Type I low-pass
[b, a] = cheby1(N, alphap, Wn, 'low');

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
plot(w/pi, mag2db(m), '-b', 'LineWidth', 1);
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('Chebyshev Type I Low-pass Filter Frequency Response');
grid on;

subplot(2,1,2);
plot(w/pi, an, '-b', 'LineWidth', 1);
xlabel('Normalized Frequency');
ylabel('Phase in Radians');
title('Chebyshev Type I Low-pass Filter Phase Response');
grid on;
