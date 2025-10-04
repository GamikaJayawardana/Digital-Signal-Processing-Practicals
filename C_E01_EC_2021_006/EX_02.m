subplot(2,1,1);
x = linspace(-5,5);
y1 = x.^2+1i*x;
plot(x,real(y1),'-c')
xlabel('x')
ylabel('Real Part')
title('Real Part of w=x^2+ix')
grid on

subplot(2,1,2); 
y2 = x.^2+1i*x;
plot(x,imag(y2),'-m')
xlabel('x')
ylabel('Imaginary Part')
title('Imaginary Part of w=x^2+ix')
grid on