x = 0:0.5:10;
y = exp(-x);

subplot(2,2,1);
plot(x,y);
title('Normal Linear');
grid on;

subplot(2,2,2);
semilogy(x,y);
title('Semilog Y (Log-Linear)');
grid on;

subplot(2,2,3);
semilogx(x,y);
title('Semilog X (Linear-log)');
grid on;

subplot(2,2,4);
loglog(x,y);
title('LogLog')
grid on;

