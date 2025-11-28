Fs = 1000;         
t = 0:1/Fs:1;        

x1 = sin(2*pi*125*t);   
x2 = sin(2*pi*350*t);  

x = x1 + x2;          

figure;
plot(t, x,'LineWidth',1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title('Composite Signal in Time Domain');
