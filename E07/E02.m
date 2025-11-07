clc; close all; clear;

fp = [0.15 0.45]; 
N = 30;          

w0 = 0:0.01:pi;

b_rect = fir1(N, fp, 'bandpass', rectwin(N+1));
b_black = fir1(N, fp, 'bandpass', blackman(N+1));
b_ham = fir1(N, fp, 'bandpass', hamming(N+1));
b_hann = fir1(N, fp, 'bandpass', hann(N+1));
b_tri = fir1(N, fp, 'bandpass', triang(N+1));

H_rect = freqz(b_rect,1,w0);
H_black = freqz(b_black,1,w0);
H_ham = freqz(b_ham,1,w0);
H_hann = freqz(b_hann,1,w0);
H_tri = freqz(b_tri,1,w0);

%--(a)--
figure;
sgtitle('Band-Pass FIR Filters');

subplot(2,3,1);
plot(w0/pi, 20*log10(abs(H_rect)),'LineWidth',1.4); grid on;
title('Rectangular Window'); ylabel('Magnitude (dB)'); 
xlabel('Normalized Frequency ');
xlim([0 1]);

subplot(2,3,2);
plot(w0/pi, 20*log10(abs(H_black)),'LineWidth',1.4); grid on;
title('Blackman Window'); ylabel('Magnitude (dB)'); 
xlabel('Normalized Frequency ');
xlim([0 1]);

subplot(2,3,3);
plot(w0/pi, 20*log10(abs(H_ham)),'LineWidth',1.4); grid on;
title('Hamming Window'); ylabel('Magnitude (dB)'); 
xlabel('Normalized Frequency ');
xlim([0 1]);

subplot(2,3,4);
plot(w0/pi, 20*log10(abs(H_hann)),'LineWidth',1.4); grid on;
title('Hann Window'); ylabel('Magnitude (dB)');
xlabel('Normalized Frequency ');
xlim([0 1]);

subplot(2,3,5);
plot(w0/pi, 20*log10(abs(H_tri)),'LineWidth',1.4); grid on;
title('Triangular Window'); ylabel('Magnitude (dB)');
xlabel('Normalized Frequency '); 
xlim([0 1]);

%--(b)--
figure;
N1=13; N2=14; N3=15;

b1 = fir1(N1, fp, 'bandpass', hamming(N1+1));
b2 = fir1(N2, fp, 'bandpass', hamming(N2+1));
b3 = fir1(N3, fp, 'bandpass', hamming(N3+1));

H1 = freqz(b1,1,w0);
H2 = freqz(b2,1,w0);
H3 = freqz(b3,1,w0);

plot(w0/pi,20*log10(abs(H1)),'r','LineWidth',1.4); 
hold on;
plot(w0/pi,20*log10(abs(H2)),'g','LineWidth',1.4);
plot(w0/pi,20*log10(abs(H3)),'b','LineWidth',1.4); 
grid on;
title('Effect of Filter Order (Hamming Window)');
xlabel('Normalized Frequency');
ylabel('Magnitude (dB)');
legend('N=13','N=14','N=15');
