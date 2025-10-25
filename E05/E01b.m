b = [1, -0.6 ,0];        
a = [1, -0.5, 0.2]; 

w = linspace(0, pi, 500); 
[h, w] = freqz(b, a, w); 
magH = abs(h);               
phaH = angle(h) * 180/pi;

subplot(2,1,1);
plot(w/pi,magH, 'm--', 'LineWidth', 1.5)
xlabel("|H|")
ylabel("Frequency (in pi units)")
title('Magnitude Response of H(z)'); 

subplot(2,1,2);
plot(w/pi,phaH, 'b-', 'LineWidth', 1.5)
xlabel("Degrees")
ylabel("Frequency (in pi units)")
title('Phase Response of H(z)'); 