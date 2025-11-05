% --- (i) ---
fs = 1000;      
f = 5;           
t = 0:1/fs:1-1/fs; 

sine_wave = sin(2 * pi * f * t);

noise = 0.5 * randn(size(t));
noisy_signal = sine_wave + noise;


% --- (ii)  ---
h_avg = [0.25 0.25 0.25 0.25];


% --- (iii)---

filtered_signal = conv(noisy_signal, h_avg, 'same');


% --- (iv)---
figure;

subplot(3, 1, 1);
plot(t, sine_wave, 'k');
title('1. Original Clean Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
ylim([-2, 2]); 


subplot(3, 1, 2);
plot(t, noisy_signal, 'b');
title('Signal with Added Noise');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
ylim([-2, 2]); 


subplot(3, 1, 3);
plot(t, filtered_signal, 'r', 'LineWidth', 1.5);
title('Filtered Signal (Noise Reduced)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
ylim([-2, 2]); n