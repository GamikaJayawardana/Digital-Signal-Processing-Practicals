t = 0:0.01:60;
x = 2*sin(0.1*pi*t);

y = x;
y(x > 1) = 1;
y(x < -1) = -1;

figure;

subplot(3,1,1);
plot(t,x,'b','LineWidth',1.2);
title('Original Signal x(t)'); 
xlabel('t'); 
ylabel('x(t)');
grid on;

subplot(3,1,2);
plot(t,y,'--g','LineWidth',1.2);
title('Clipped Signal y(t)');
xlabel('t'); ylabel('y(t)'); 
grid on;

subplot(3,1,3);
plot(t,x,'b','LineWidth',1.2); hold on;
plot(t,y,'g--','LineWidth',1.2);
title('Comparison of x(t) and y(t)');
xlabel('t'); 
ylabel('Amplitude');
legend('x(t)','y(t)');
grid on;