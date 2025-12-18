fs = 500;
t = 0:1/fs:2;

X = fft(x);
mask = zeros(size(X));

for k = 1:length(f)
    if (f(k) >= 2 && f(k) <= 20)
        mask(k) = 1;
        mask(end-k+1) = 1;
    end
end

X_masked = X .* mask;
x_rec = real(ifft(X_masked));

figure;
plot(t, x_rec, 'LineWidth', 1.2); hold on;
plot(t, y_fda, 'LineWidth', 1.2);
legend('IFFT Reconstructed','FDA Tool FIR Output');
title('Time-domain Comparison');
xlabel('Time (s)');
