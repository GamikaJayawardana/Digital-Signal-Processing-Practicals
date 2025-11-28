Fs = 2000;           
Fstop = 400;         
Fpass = 500;         
N = 30;               

nyq = Fs/2;
f = [0 Fstop Fpass nyq] / nyq;    
a = [0 0 1 1];                   

nfft = 2048;
[H, w] = freqz(b_hp, 1, nfft, Fs);  

figure;
subplot(2,1,1);
plot(w, abs(H));
grid on;
xlabel('Frequency (Hz)');
ylabel('Magnitude (dB)');
title('Magnitude Response (freqz)');

subplot(2,1,2);
plot(w, unwrap(angle(H)));
grid on;
xlabel('Frequency (Hz)');
ylabel('Phase (rad)');
title('Phase Response (freqz)');

