b = [1, 2, 3];       
a = [1, -1.2, 0.8];   

figure;
zplane(b, a);
title('Pole-Zero Plot of H(z)');
xlabel('Real(z)'); ylabel('Imag(z)');
grid on;
