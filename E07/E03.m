clc; close all; clear;

fs1 = 0.1; fs2 = 0.8;    
N = 20;

w0 = linspace(0, pi, 512);

b_rect  = fir1(N, [fs1 fs2], 'stop', rectwin(N+1));
b_black = fir1(N, [fs1 fs2], 'stop', blackman(N+1));
b_ham   = fir1(N, [fs1 fs2], 'stop', hamming(N+1));
b_hann  = fir1(N, [fs1 fs2], 'stop', hann(N+1));
b_tri   = fir1(N, [fs1 fs2], 'stop', triang(N+1));

H_rect  = freqz(b_rect,  1, w0);
H_black = freqz(b_black, 1, w0);
H_ham   = freqz(b_ham,   1, w0);
H_hann  = freqz(b_hann,  1, w0);
H_tri   = freqz(b_tri,   1, w0);

figure;

subplot(2,1,1);
plot(w0/pi, 20*log10(abs(H_rect)),  'r', 'LineWidth', 1.2); hold on;
plot(w0/pi, 20*log10(abs(H_black)), 'b', 'LineWidth', 1.2);
plot(w0/pi, 20*log10(abs(H_ham)),   'g', 'LineWidth', 1.2);
plot(w0/pi, 20*log10(abs(H_hann)),  'm', 'LineWidth', 1.2);
plot(w0/pi, 20*log10(abs(H_tri)),   'k', 'LineWidth', 1.2);
xlabel('Normalized Frequency');
ylabel('Magnitude (dB)');
title('Magnitude Responses of Band-Stop FIR Filters');
legend('Rectangular','Blackman','Hamming','Hann','Triangular');
grid on;
xlim([0 1]);


subplot(2,1,2);
plot(w0/pi, angle(H_rect),  'r', 'LineWidth', 1.2); hold on;
plot(w0/pi, angle(H_black), 'b', 'LineWidth', 1.2);
plot(w0/pi, angle(H_ham),   'g', 'LineWidth', 1.2);
plot(w0/pi, angle(H_hann),  'm', 'LineWidth', 1.2);
plot(w0/pi, angle(H_tri),   'k', 'LineWidth', 1.2);
xlabel('Normalized Frequency');
ylabel('Phase (radians)');
title('Phase Responses of Band-Stop FIR Filters');
legend('Rectangular','Blackman','Hamming','Hann','Triangular');
grid on;
xlim([0 1]);

sgtitle('Band-Stop FIR Filters using Different Windows');
