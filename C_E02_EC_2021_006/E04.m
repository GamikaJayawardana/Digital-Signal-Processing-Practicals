A = 1;
M = 0.5;
fc = 50;
fm = 5;
t = 0: 0.001: 0.5;

carrier = A*cos(2*pi*fc*t);
modulating = M*sin(2*pi*fm*t);
Xam = A*cos(2*pi*fc*t) .*(2 + M*sin(2*pi*fm*t));

subplot(3,1,1);
plot(t, carrier, 'k', 'LineWidth', 1.5);
xlabel('t');
ylabel('Amplitude)');
title('The Carrier Signal');
grid on;

subplot(3,1,2);
plot(t, modulating, 'k', 'LineWidth', 1.5);
xlabel('t');
ylabel('Amplitude)');
title('The Modulating Signal');
grid on;

subplot(3,1,3);
plot(t, Xam, 'k', 'LineWidth', 1.5);
xlabel('t');
ylabel('Amplitude)');
title('The AM Signal');
grid on;