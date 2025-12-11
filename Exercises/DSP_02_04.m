A = 1;
M = 0.5;
fc = 50;
fm = 5;
t = 0:0.001:0.5;

carrier = A * cos(2*pi*fc*t);
message = M * sin(2*pi*fm*t);

am_signal = (A + message) .* cos(2*pi*fc*t);

subplot(3,1,1);
plot(t, carrier);
title('High frequency Carrier');

subplot(3,1,2);
plot(t, message);
title('Low Freq Message');

subplot(3,1,3);
plot(t, am_signal);
title('AM Modulated Signal');