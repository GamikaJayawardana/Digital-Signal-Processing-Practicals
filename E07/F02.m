clc; close all; clear;

f = input('Enter cut off frequency (normalized,0<f<1): '); 
N = input('Enter filter order (N > 1): ');

w0 = 0:0.1:pi; 

b_rectangle = fir1(N, f/pi, 'high', rectwin(N+1)); 
b_blackman = fir1(N, f/pi, 'high', blackman(N+1));
b_hamming = fir1(N, f/pi, 'high', hamming(N+1));
b_hanning = fir1(N, f/pi, 'high', hann(N+1));
b_triangular = fir1(N, f/pi, 'high', triang(N+1)); 

h_rectangle = freqz(b_rectangle, 1, w0); 
h_blackman = freqz(b_blackman, 1, w0); 
h_hamming = freqz(b_hamming, 1, w0); 
h_hanning  = freqz(b_hanning , 1, w0); 
h_triangular = freqz(b_triangular, 1, w0); 

sgtitle('High-Pass Filters using Different Windows');

subplot(2,3,1);
plot(w0/pi, abs(h_rectangle),'LineWidth',1.6); grid on;
title('Rectangular Window'); 
xlabel('Normalized frequency');
ylabel('Magnitude in dB');
xlim([0 1]);

subplot(2,3,2);
plot(w0/pi, abs(h_blackman),'LineWidth',1.6); grid on;
title('Blackman Window'); 
xlabel('Normalized frequency');
ylabel('Magnitude in dB');
xlim([0 1]);

subplot(2,3,3);
plot(w0/pi,abs(h_hamming),'LineWidth',1.6); grid on;
title('Hamming Window'); 
xlabel('Normalized frequency');
ylabel('Magnitude in dB');
xlim([0 1]);

subplot(2,3,4);
plot(w0/pi, abs(h_hanning),'LineWidth',1.6); grid on;
title('Hann Window'); 
xlabel('Normalized frequency');
ylabel('Magnitude in dB');
xlim([0 1]);

subplot(2,3,5);
plot(w0/pi, abs(h_triangular),'LineWidth',1.6); grid on;
title('Triangular Window');
xlabel('Normalized frequency');
ylabel('Magnitude in dB'); 
xlim([0 1]);
