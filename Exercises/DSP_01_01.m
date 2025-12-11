x = -10:1:10;
y = 2*x.^2 - 2*x + 1;
z = x.^3 + 3*x + 1;

plot(x,y,'b','LineWidth', 1.5);
hold on;
plot(x,z,'--r','LineWidth', 1.5);

legend('y = 2x^2..', 'y = x^3...')
axis([-10 10 -200 200])
grid on;




