% Amplitude and Frequency
A = 1; F = 2;
%Time vector for continuous signal
t = 0:0.001:1;
% Continuous-time sine wave
x_a = A*sin(2*pi*F*t);

figure;
subplot(3,1,1)
plot(t,x_a,'-b','LineWidth',1.5)
title('Analogue (Continuous) Input Signal')
ylabel('x_a','Interpreter','tex')
xlabel('time(sec)')

% Sampling at Nyquist rate 
F_s = 1.5*F;
% Sampling points
n = 0:1/F_s:1;
% Discrete-time signal
x_s = A*sin(2*pi*F*n);

subplot(3,1,2)
stem(n,x_s,'-b','LineWidth',1.5)
title('Discreete Time Signal ( F_s < 2*F)','Interpreter','tex')
xlabel('samples(n)')
ylabel('x_s','Interpreter','tex')


% Time vector for reconstruction
t_r = linspace(0, 1, 1000);
% Reconstruct signal using linear interpolation
x_linear = interp1(n, x_s, t_r, 'linear');
% Reconstruct signal using spline interpolation
x_spline = interp1(n, x_s, t_r, 'spline');

subplot(3,1,3) 
hold on
plot(t_r,x_spline,'-b','LineWidth',1.5)
title('Reconstructed Signal ( F_s < 2*F)','Interpreter','tex')
xlabel('time(sec)')
ylabel('x_r','Interpreter','tex')