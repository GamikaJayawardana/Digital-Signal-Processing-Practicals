fs = 500;
t = 0:1/fs:2;
noise = 2.5*randn(size(t));
x = sin(16*pi*t) + 0.7*sin(100*pi*t) + 0.5*sin(200*pi*t) + noise;

plot(t, x);
title('Sampled Signal x(t)');
xlabel('Time (s)'); 
ylabel('Amplitude');
grid on;

