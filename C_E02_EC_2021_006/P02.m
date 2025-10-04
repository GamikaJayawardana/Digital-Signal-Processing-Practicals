subplot(3,2,1);
t_impulse = -5:1:5;
impulse_signal = (t_impulse == 0);
stem(t_impulse,impulse_signal,'-b','filled','LineWidth',1.2)
xlabel('Time')
ylabel('Number of Samples')
title('DT Unit Impulse Signal')
grid on
 
subplot(3,2,2);
t_step = -5:1:5;
step_sequence = (t_step >= 0);
stem(t_step,step_sequence,'-b','filled','LineWidth',1.2)
xlabel('Number of Samples')
ylabel('Amplitude')
title('DT Unit Step Signal')
grid on
 
subplot(3,2,3);
t_ramp = 0:1:10;
ramp_sequence = max (t_ramp,0);
stem(t_ramp,ramp_sequence,'-b','filled','LineWidth',1.2)
xlabel('Number of Samples')
ylabel('Amplitude')
title('DT Ramp Signal')
grid on
 
subplot(3,2,4);
t_exp = 0:1:30;
a=1.5;
exp_sequence = a.^t_exp;
stem(t_exp,exp_sequence,'-b','filled','LineWidth',1.2)
xlabel('Number of Samples')
ylabel('Amplitude')
title('DT Exponential Signal')
grid on

subplot(3,2,5);
t = -2*pi:0.2:2*pi;
sine_wave = sin(t);
stem(t,sine_wave,'-b','filled','LineWidth',1.2)
xlabel('Number of Samples')
ylabel('sin(x)')
title('DT Sine wave')
grid on

subplot(3,2,6);
cosine_wave = cos(t);
stem(t,cosine_wave,'-b','filled','LineWidth',1.2)
xlabel('Number of Samples')
ylabel('cos(x)')
title('DT Cosine Wave')
grid on
