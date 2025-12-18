%% 01
clc; clear all;

fs = 500;
t = 0:1/fs:2;

noise = 0.2*randn(size(t));
x = sin(16*pi*t) + 0.7.*sin(100*pi*t) * 0.5.*sin(200*pi*t);
noisy_x = x + noise;

subplot(3,1,1);
plot(t,x);

subplot(3,1,2);
plot(t,noise);

subplot(3,1,3);
plot(t,noisy_x);

%% 02

N = length(t);

Y = fft(noisy_x, N);
f = (0:N-1)*(fs/N);

plot(f,abs(Y));
xlim([0 250]);

%% 03

n=80;
fp = [0.008 0.08];
b = fir1(n, fp, 'bandpass', hamming(n+1));

[h,w] = freqz(b, 1, 512);

plot(w/pi, 20*log10(abs(h)));

%% 03

n=80;
fp = [0.008 0.08];
b = fir1(n, fp, 'bandpass', hamming(n+1));

 freqz(b, 1, 512);

plot(w/pi, 20*log10(abs(h)));
%% 04

Yn = filter(b,1,noisy_x);
plot(t,Yn);

%% 05

Y = fft(noisy_x, N);
f = (0:N-1)*(fs/N);

mask = (f >= 2 & f <= 20) | (f >= (fs-20) & f <= (fs-2));

% Ensure mask and Y are the same orientation before multiplying
if size(mask) ~= size(Y)
    mask = mask'; 
end

Y_masked = Y .* mask;

% Plotting the masked spectrum to verify
plot(f, abs(Y_masked));
title('Masked Frequency Spectrum (2-20 Hz)');
xlabel('Frequency (Hz)');
xlim([0 250]);

%% 

Y_reco = ifft(Y_masked);
plot(t,Y_reco);

%%

X_full = fft(noisy_x);
f_axis = (0:N-1)*(fs/N);

mask = zeros(size(X_full)); 
% Create Mask for 2-20 Hz
idx = (f_axis >= 2 & f_axis <= 20) | (f_axis >= (fs-20) & f_axis <= (fs-2));
mask(idx)=1;
X_masked = X_full .* mask;

% Reconstruct via IFFT
x_rec = real(ifft(X_masked));

figure;
plot(t, x_rec, 'r--');
legend('FDA Tool Filtered', 'IFFT Reconstructed');
title('Comparison: Filter vs. Frequency Masking');
