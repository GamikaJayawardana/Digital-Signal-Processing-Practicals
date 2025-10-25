x_original = [1, 1, 0, 0];
N = length(x_original);
X = fft(x_original);
x_reconstructed = ifft(X);

fprintf('Original sequence: [');
fprintf('%.1f ', x_original);
fprintf(']\n');

fprintf('Reconstructed sequence: [');
fprintf('%.6f ', real(x_reconstructed));
fprintf(']\n');


figure;

subplot(3,1,1);
stem(0:N-1, x_original, 'r', 'filled', 'LineWidth', 2);
title('Original Sequence');
xlabel('Discrete Time Index n');
ylabel('Amplitude');
xlim([-0.5, N-0.5]);

subplot(3,1,2);
stem(0:N-1, abs(X), 'k', 'filled', 'LineWidth', 1.5);
title('Magnitude of Frequency Components');
xlabel('Frequency Bin');
ylabel('Magnitude');
xlim([-0.5, N-0.5]);


subplot(3,1,3);
stem(0:N-1, real(x_reconstructed), 'm', 'filled', 'LineWidth', 1.5);
title('Reconstructed Sequence');
xlabel('Discrete Time Index n');
ylabel('Amplitude');
xlim([-0.5, N-0.5]);

tolerance = 1e-10;
if max(abs(real(x_reconstructed) - x_original)) < tolerance
    fprintf('The reconstructed sequence matches the original sequence\n');
else
    fprintf('The reconstructed sequence does not match the original sequence\n');
end
