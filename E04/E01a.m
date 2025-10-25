f1 = 20; f2 = 200; f3 = 400;
A = 1; 

fs1 = 900;
t1 = 0:1/fs1:1; 
x1 = A*sin(2*pi*f1*t1) + A*sin(2*pi*f2*t1) + A*sin(2*pi*f3*t1);

figure;
plot(t1, x1, 'k-', 'LineWidth', 1);