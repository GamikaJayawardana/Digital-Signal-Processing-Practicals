x = -5:0.5:5;
y = exp(-x) + 1i*log(x.^2 + 2);

subplot(2,1,1);
stem(x, real(y),'b', 'filled');
title('Real Part');

subplot(2,1,2);
stem(x, imag(y), 'r', 'filled');
title('Imaginary Part');