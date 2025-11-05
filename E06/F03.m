x = [1 2 3 4]; 
h = [1 2 1 2];  

ylc_builtin = conv(x, h);

N = max(length(x), length(h));
ycc_builtin = cconv(x, h, N);

figure;

subplot(3, 1, 1);
stem(0:length(x)-1, x, 'b', 'DisplayName', 'x[n]');
hold on;
stem(0:length(h)-1, h, 'r', 'DisplayName', 'h[n]');
hold off;
title('Input Sequences (Built-In)');
xlabel('Sample Index');
ylabel('Amplitude');
legend;


subplot(3, 1, 2);
stem(0:length(ylc_builtin)-1, ylc_builtin, 'g');
title('Built-in Linear Convolution');
xlabel('Sample Index');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(0:N-1, ycc_builtin, 'm');
title('Built-in Circular Convolution');
xlabel('Sample Index');
ylabel('Amplitude');