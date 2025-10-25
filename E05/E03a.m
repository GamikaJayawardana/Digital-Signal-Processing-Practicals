syms z n

Hz = (1 + 2*z^-1 + 3*z^-2) / (1 - 1.2*z^-1 + 0.8*z^-2);

x_n = iztrans(Hz, z, n);
x_n_simpl = simplify(x_n);

fprintf('Symbolic inverse Z-transform x[n] = \n');
disp(x_n_simpl);
