t = -5:0.01:5;

subplot(3,1,1);
impulse = (t == 0);
plot(t, impulse);
title('Unit Impulse');

subplot(3,1,2);
unit_step = (t >= 0);
plot(t, unit_step);
title('Unit Step');

subplot(3,1,3);
ramp = t.*(t >= 0);
plot(t, ramp);
title('Ramp Signal');


