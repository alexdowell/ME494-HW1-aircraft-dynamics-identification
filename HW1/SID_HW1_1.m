% p = A * phi + B * ail + C
load hw1_timber.mat
t = timber.t; %measured data%
phi = timber.roll; %measured data%
ail = timber.aileron; %measured data%
p = timber.rollrate; %measured data%
x = [phi, ail, ones(1001,1)];
T_hat =(x'*x)\x'*p;
disp('the estimated parameters are')
T_hat
p_m = T_hat(1) * phi + T_hat(2) * ail + T_hat(3);
plot(t,p,t,p_m)
title('measured and modeled roll rate vs. time')
xlabel('time')
ylabel('rollrate')
legend('measured','modeled')