% --- (a) ---
x = [1 2 3];
h = [1 1 1 1];

m = length(x);
n = length(h);
L = m + n - 1; % Output length for linear convolution

% (i) Manual Convolution without Zero Padding (Correct Implementation)
ylc_manual_no_pad = zeros(1, L);
for i = 1:L
    for k = 1:m
        if (i - k + 1) > 0 && (i - k + 1) <= n
            ylc_manual_no_pad(i) = ylc_manual_no_pad(i) + x(k) * h(i - k + 1);
        end
    end
end

% (ii) Manual Convolution with Zero Padding
x_padded = [x, zeros(1, L - m)];
h_padded = [h, zeros(1, L - n)];
ylc_manual_padded = zeros(1, L);
for i = 1:L
    for k = 1:i
        ylc_manual_padded(i) = ylc_manual_padded(i) + x_padded(k) * h_padded(i - k + 1);
    end
end

% (iii) Built-in Convolution
ylc_builtin = conv(x, h);

disp('Manual Convolution (No Padding):');
disp(ylc_manual_no_pad);
disp('Manual Convolution (With Padding):');
disp(ylc_manual_padded);
disp('Built-in conv Function:');
disp(ylc_builtin);

% --- (b) Plotting the results ---
figure;

subplot(3,1,1);
stem(0:L-1, ylc_manual_no_pad, 'b', 'filled');
title('Manual Convolution (No Padding)');
xlabel('Sample Index (n)');
ylabel('Amplitude');
grid on;

subplot(3,1,2);
stem(0:L-1, ylc_manual_padded, 'b', 'filled');
title('Manual Convolution (With Zero Padding)');
xlabel('Sample Index (n)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
stem(0:L-1, ylc_builtin, 'b', 'filled');
title('Built-in conv Function');
xlabel('Sample Index (n)');
ylabel('Amplitude');
grid on;

sgtitle('Linear Convolution Comparison');
