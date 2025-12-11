x = -10:0.1:10;

x1 = x(x<-3);
y1 = x1 + 6 ;

x2 = x(x >= -3 & x <= 3);
y2 = 3 * ones(size(x2));

x3 = x(x > 3);
y3 = x3;

figure;
plot(x1, y1, 'b');
hold on;
plot(x2, y2, 'g--');
plot(x3, y3, 'r');

legend('region 1', 'Region 2', 'Region 3');
title('Piesewise Function');

