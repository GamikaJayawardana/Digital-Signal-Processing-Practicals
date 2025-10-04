t = -2*pi:0.1:2*pi;
theta = pi/4;
unshipted_sine_wave = sin(t);
plot(t,unshipted_sine_wave,'-b','LineWidth',1.5)
xlabel('Time')
ylabel('Amplitude')
title('Sine wave')
grid on
hold on

shipted_sine_wave = sin(t + theta);
plot(t,shipted_sine_wave,'--y','LineWidth',1.5)
xlabel('Time')
ylabel('Amplitude')

legend('Unshipted Sine Wave','Shifted Sine Wave')

