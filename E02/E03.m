t = -5:0.01:10;
step_sequence = (t >= 0);
del_step_sequence = (t >= 0);
ramp_sequence = max (t,0);
z = ramp_sequence - 2*del_step_sequence;

subplot(3,1,1);
plot(t,step_sequence,'-m','LineWidth',1.5)
xlabel('t')
ylabel('u(t)')
grid on

subplot(3,1,2);
plot(t,ramp_sequence,'-b','LineWidth',1.5)
xlabel('t')
ylabel('r(t)')
grid on

subplot(3,1,3);
plot(t,z,':g','LineWidth',1.5)
xlabel('t')
ylabel('Z(t)')
grid on