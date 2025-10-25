b = [1, -0.6 ,0];        
a = [1, -0.5, 0.2]; 

n = 0:49;
x = sin(0.1*pi*n);
y = filter(b, a, x);  

figure;
plot(n, y, 'g-', 'LineWidth', 1.2); hold on;
plot(n, x, 'b--', 'LineWidth', 1.0);
title('Input and Output');
xlabel('n');
ylabel('Amplitude');
legend('output','input');
grid on;

