n = 0:15;
u = (n >= 0);

x_grow = (3).^n .* u;
x_decay = (0.8).^n .* u;

stem(n, x_grow,"filled",'b');
hold on;
stem(n, x_decay, "filled",'r');
