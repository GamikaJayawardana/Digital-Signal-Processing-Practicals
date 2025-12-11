t = 0:0.001:6;
clean_sig = 5*sin(2*pi*1*t);
noise = 0.2 * randn(size(t));
noisy_signal = clean_sig + noise;

ts = 0:0.1:6;
sampled_val = 5*sin(2*pi*1*ts) + 0.2*randn(size(ts));

subplot(3,1,1);
plot(t, clean_sig);

subplot(3,1,2);
plot(t, noisy_signal);

subplot(3,1,3);
stem(ts, sampled_val);

