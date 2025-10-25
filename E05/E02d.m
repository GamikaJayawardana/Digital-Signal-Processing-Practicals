b = [4, 3, 2, 0.5, 1.5];   
a = [1, 6, 8, 2, 0.6];    

n = 0:20;
[h, nout] = impz(b, a, n);

figure;
stem(nout, h, 'filled');
title('Impulse Response of G(z)');
xlabel('n');
ylabel('h[n]');
grid on;
