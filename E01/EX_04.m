x = 0:0.5:10;
y1 = exp(-x);

subplot(2,2,1);
plot(x,y1,'-b','LineWidth',1.5)
xlabel('x')
ylabel('y')
title('Normal Plot:y=e^-^x')
grid on

subplot(2,2,2);
semilogy(x,y1,'-g','LineWidth',1.5)
xlabel('x')
ylabel('y(log Scale)')
title('Semilog y Plot:y=e^-^x')
grid on

subplot(2,2,3);
semilogx(x,y1,'-r','LineWidth',1.5)
xlabel('x(log Scale)')
ylabel('y')
title('Semilog x Plot:y=e^-^x')
grid on

subplot(2,2,4);
loglog(x,y1,'-k','LineWidth',1.5)
xlabel('x(log Scale)')
ylabel('y(log Scale)')
title('Loglog Plot:y=e^-^x')
grid on



