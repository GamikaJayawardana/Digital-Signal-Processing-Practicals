syms z n

a = sym(0.3);
N = 20;

Xz = - symsum(a^n * z^(-n), n, 0, N);  
Xz_simpl = simplify(Xz);
fprintf('X(z) for x[n] = - (0.3)^n, 0 <= n <= 20 (simplified):\n');
disp(Xz_simpl);

theta = linspace(0, 2*pi, 600);
r_inner = 0.05;  
r_outer = 2.0; 

x_inner = r_inner * cos(theta); y_inner = r_inner * sin(theta);
x_outer = r_outer * cos(theta); y_outer = r_outer * sin(theta);
ux = cos(theta); uy = sin(theta);

figure; 
hold on; 
axis equal;
fill([x_inner, fliplr(x_outer)], [y_inner, fliplr(y_outer)], 'y','FaceAlpha', 0.35, 'EdgeColor', 'none');

plot(ux, uy, 'm--', 'LineWidth', 1.5);

xlabel('Real(z)');
ylabel('Imag(z)');
title('Unit circle and ROC for x[n] = - (0.3)^n, 0 \le n \le 20');
legend('ROC','Unit circle |z|=1');
grid on;
xlim([-r_outer r_outer]); ylim([-r_outer r_outer]);

