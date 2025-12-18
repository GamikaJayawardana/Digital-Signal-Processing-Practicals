fs = 500;
t = 0:1/fs:2;
a = 1;

figure;
subplot(2,1,1);
plot(t, x);
title('Sampled Signal x(t)');
xlabel('Time (s)'); 
ylabel('Amplitude');
grid on;

subplot(2,1,2);
y_fda = filter(b, a, x);
plot(t, y_fda); 
title('Filtered Signal y[n] (FDA Tool FIR)');
xlabel('Time(s)'); 
ylabel('Amplitude');