t = 0:0.01:60;
x = 2 * sin(0.1*pi*t);

y = x;

y(x > 1) = 1;
y(x < -1) = -1;

subplot(2,1,1);
plot(t,x);

subplot(2,1,2);
plot(t,y);