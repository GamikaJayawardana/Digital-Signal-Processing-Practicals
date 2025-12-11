x = linspace(-5,5);
y1 = x.^2 + 1i*x ;

subplot(2,1,1);
plot(x, real(y1), '-c');
title('Real Part');
xlabel('x');
ylabel('Re(y)');

subplot(2,1,2);
plot(x,imag(y1), '-m');
title('Imagenary part');
xlabel('x');
ylabel('Im(y)');
