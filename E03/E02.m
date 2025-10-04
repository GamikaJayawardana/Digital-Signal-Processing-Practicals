%Time vector for continuous signal
t = 0:0.001:1;
% Continuous-time sine waves
x1 =sin(45*pi*t);
x2 =sin(5*pi*(t));

% Sampling at Nyquist rate 
F_s = 20;
% Sampling points
n = 0:1/F_s:1;
% Discrete-time signals
x1_s =sin(45*pi*n);
x2_s =sin(5*pi*n);

figure;
subplot(3,1,1)
plot(t,x1,'-g','LineWidth',1.5)
hold on
stem(n,x1_s,'m','filled','LineWidth',1.5)
hold off
title('Analogue (Continuous) Input Signal')
ylabel('x(t)','Interpreter','tex')
xlabel('time(sec)')

subplot(3,1,2)
plot(t,x2,'-g','LineWidth',1.5) 
hold on
stem(n,x2_s,'m','filled','LineWidth',1.5)
title('Analogue (Continuous) Input Signal')
ylabel('x(t)','Interpreter','tex')
xlabel('time(sec)')

subplot(3,1,3)
stem(n,x1_s,'g','filled','LineWidth',1.5)
hold on
stem(n,x2_s,'r','LineWidth',1.5)
hold off
title('Reconstructed Signal ( F_s = 2*F)','Interpreter','tex')
xlabel('time(sec)')
ylabel('x_r','Interpreter','tex')


