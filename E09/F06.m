Fs = 1000;         
t = 0:1/Fs:1;        
x1 = sin(2*pi*125*t);   
x2 = sin(2*pi*350*t);  
x = x1 + x2; 

y = filter(b, 1, x);   

N = length(x);
X = abs(fft(x));
Y = abs(fft(y));

f = (0:N-1)*(Fs/N);   

figure;
subplot(2,1,1);
plot(f, X,'g-');
title('FFT of Original Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0 500]);
grid on;

subplot(2,1,2);
plot(f, Y,'r-');
title('FFT of Filtered Signal');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
xlim([0 500]);
grid on;


