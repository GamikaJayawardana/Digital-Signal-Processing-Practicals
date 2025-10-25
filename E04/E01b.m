f1 = 20; f2 = 200; f3 = 400;
A = 1; 

fs1 = 900;
t1 = 0:1/fs1:1; 
x1 = A*sin(2*pi*f1*t1) + A*sin(2*pi*f2*t1) + A*sin(2*pi*f3*t1);

fs2 = 450;
t2 = 0:1/fs2:1;
x2 = A*sin(2*pi*f1*t2) + A*sin(2*pi*f2*t2) + A*sin(2*pi*f3*t2);

N1 = length(x1);
N2 = length(x2);

X1 = fft(x1, N1);
freq1 = (0:N1-1) * fs1 / N1;

X2 = fft(x2, N2);
freq2 = (0:N2-1) * fs2 / N2;

figure;
subplot(2,1,1);
plot(freq1(1:N1/2), abs(X1(1:N1/2)), 'k-', 'LineWidth', 1.5);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum - Sampling Rate: 900 Hz');


subplot(2,1,2);
plot(freq2(1:N2/2), abs(X2(1:N2/2)), 'b-', 'LineWidth', 1.5);
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Spectrum - Sampling Rate: 450 Hz');