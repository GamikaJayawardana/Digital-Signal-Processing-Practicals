%Time vector for continuous signal
t = 0:0.001:1;
% Continuous-time sine waves
x =sin(50*pi*t) + sin(90*pi*t);

figure;
subplot(3,1,1)
plot(t,x,'-g','LineWidth',1.5)
title('Analogue (Continuous) Input Signal')
ylabel('x(t)','Interpreter','tex')
xlabel('time(sec)')

% Sampling at Nyquist rate 
F_s = 190;
% Sampling points
n = 0:1/F_s:1;
% Discrete-time signals
x_s =sin(50*pi*n) + sin(90*pi*n);

subplot(3,1,2)
plot(t,x,'-g','LineWidth',1.5)
hold on
stem(n,x_s,'-b','MarkerFaceColor','yellow','LineWidth',1.5)
hold off
title('Discreete Time Signal','Interpreter','tex')
xlabel('samples(n)')
ylabel('x_s','Interpreter','tex')

% Time vector for reconstruction
t_r = linspace(0, 1, 1000);
% Reconstruct signal using spline interpolation
x_spline = interp1(n, x_s, t_r, 'spline');

subplot(3,1,3)
plot(t,x,'-g','LineWidth',1.5)
hold on
plot(t_r,x_spline,'--m','LineWidth',1.5)
title('Reconstructed Signal Spline','Interpreter','tex')
xlabel('time(sec)')
ylabel('x_r','Interpreter','tex')