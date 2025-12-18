Fs = 500;
Wp = [2 20] / (Fs/2);      
Ws = [1 25] / (Fs/2);     
Rp = 1;                    
Rs = 40;                   

[biir, aiir] = ellip(4, Rp, Rs, Wp, 'bandpass');

figure;
freqz(biir, aiir, 1024, Fs);
title('IIR Elliptic Bandpass Filter Response');

y_iir = filter(biir, aiir, x);

figure;
plot(t(1:500), x(1:500), 'LineWidth', 1); hold on;
plot(t(1:500), y_iir(1:500), 'LineWidth', 1.2);
legend('Original x[n]','IIR Filtered');
title('IIR vs Noisy');
xlabel('Time (s)');

figure;
zplane(biir, aiir);
title(' Pole-Zero Plot of Elliptic IIR Filter');

disp("IIR has sharper transition but FIR is more stable (all poles at 0).");
disp("FIR FDA Tool filter better for distortion-free cosmic signal recovery.");
