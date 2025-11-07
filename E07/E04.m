clc; close all; clear;

fc_low = 0.2;    
fc_high = 0.8;   
N = 40;          

b_low = fir1(N, fc_low, 'low', triang(N+1));
b_high = fir1(N, fc_high, 'high', triang(N+1));

b_band = conv(b_low, b_high);

w0 = 0:0.01:pi;
H_band = freqz(b_band,1,w0);

plot(w0/pi, 20*log10(abs(H_band)+eps), 'r', 'LineWidth',1.5); grid on;
title('Band-Pass FIR Filter from LPF + HPF (Triangular Window)');
xlabel('Normalized Frequency ');
ylabel('Magnitude (dB)'); xlim([0 1]);
