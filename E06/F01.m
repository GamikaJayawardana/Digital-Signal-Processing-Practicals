x = [1 2 3 4]; 
h = [1 2 1 2];  

m = length(x);   
n = length(h); 

L = m + n - 1;   
N = max(m, n);

if m < n 
x = [x zeros(1, N - m)];   
h = [h zeros(1, N - n)];   
end

ylc_manual = zeros(1, length(x) + length(h) - 1);   
for n = 1:length(ylc_manual) 
    for k = 1:length(x) 
     if (n - k + 1) > 0 && (n - k + 1) <= length(h) 
 ylc_manual(n) = ylc_manual(n) + x(k) * h(n - k + 1); 
        end 
    end 
end 

ycc_manual = zeros(1, N);   
for k = 0:N-1 
    sum = 0; 
    for j = 0:N-1 
        sum = sum + x(mod(k - j, N) + 1) * h(j + 1); 
    end 
    ycc_manual(k + 1) = sum; 
end 

figure;

subplot(3, 1, 1);
stem(0:length(x)-1, x, 'b', 'DisplayName', 'x[n]');
hold on;
stem(0:length(x)-1, h, 'r', 'DisplayName', 'h[n]');
hold off;
title('Input Sequences (Manual)');
xlabel('Sample Index');
ylabel('Amplitude');
legend;


subplot(3, 1, 2);
stem(0:L-1, ylc_manual, 'g');
title('Manual Linear Convolution');
xlabel('Sample Index');
ylabel('Amplitude');


subplot(3, 1, 3);
stem(0:N-1, ycc_manual, 'm');
title('Manual Circular Convolution');
xlabel('Sample Index');
ylabel('Amplitude');
