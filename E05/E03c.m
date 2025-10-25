b = [1, 2, 3];       
a = [1, -1.2, 0.8];  

[R, P, K] = residuez(b, a);

fprintf('Residues (R):\n'); disp(R);
fprintf('Poles (P):\n'); disp(P);
fprintf('Direct terms (K):\n'); disp(K);

[num, den] = residuez(R, P, K); 
fprintf('Reconstructed numerator (z^-1 coeffs):\n'); disp(num);
fprintf('Reconstructed denominator (z^-1 coeffs):\n'); disp(den);