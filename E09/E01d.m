Ts = 1/Fs;
Hd_tf = tf(b_hp, 1, Ts);   
disp('Transfer function (discrete-time):');
Hd_tf
