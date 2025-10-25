b = [4, 3, 2, 0.5, 1.5];  
a = [1, 6, 8, 2, 0.6]; 

[R, P, K] = residuez(b, a);

fprintf('Residues (R):\n'); disp(R);
fprintf('Poles (P):\n'); disp(P);
fprintf('Direct terms (K):\n'); disp(K);
