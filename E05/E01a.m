b = [1, -0.6,0];        
a = [1, -0.5, 0.2]; 

figure;
zplane(b, a);
title('Pole-Zero Plot');
xlabel('Real(z)'); ylabel('Imag(z)');
grid on;