n_step=0:15;
step_sequence=(n_step>=0);
a=3;
x=a.^n_step.*step_sequence;

subplot(2,1,1)
stem(n_step,x,'-b','filled','LineWidth',1.2)
xlabel('n')
ylabel('x[n]')
title('DT Eeponential Growth')


subplot(2,1,2)
a=2;
stem(-n_step,x,'-g','filled','LineWidth',1.2)
xlabel('n')
ylabel('x[n]')
title('DT Eeponential Decay')