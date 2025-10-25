b = 0.2;            
a = [1, -0.52, 0.68]; 

H = tf(b, a, -1); 
disp('Transfer Function H(z):'); H

impz(b, a); 
