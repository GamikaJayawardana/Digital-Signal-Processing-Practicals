b = [4, 3, 2, 0.5, 1.5];
a = [1, 6, 8, 2, 0.6];

figure;
zplane(b, a);
title('Pole-Zero Plot of G(z)');
xlabel('Real(z)'); ylabel('Imag(z)');
grid on;
