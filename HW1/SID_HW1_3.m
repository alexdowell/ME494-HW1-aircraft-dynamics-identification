D = .1;
N = 1000;
u1 = linspace(-3,3,N);
u1t = u1';
u2 = linspace(2,5,N);
u2t = u2';
P_hat1_list = [];
P_hat2_list = [];
% ordinary least squares %
for n = 1:100000
 nt =randn(1000,1);
 nt = nt';
 y1 = nt + D*u1; % true output experiment1 %
 y1t = y1';
 y2 = nt + D*u2; % true output experiment2 %
 y2t = y2';
 x1 = [ones(1000,1),u1t];
 P_hat1 = (x1'*x1)\x1'*y1t;
 Y_hat1 = P_hat1(1)+ P_hat1(2)*u1;
 P_hat1_list = [P_hat1_list, P_hat1];
 x2 = [ones(1000,1),u2t];
 P_hat2 = (x2'*x2)\x2'*y2t;
 Y_hat2 = P_hat2(1)+ P_hat2(2)*u2;
 P_hat2_list = [P_hat2_list, P_hat2];
end
figure(1)
plot(u1, y1, u2, y2, u1, Y_hat1, u2, Y_hat2)
title('true output and modeled output vs. input')
xlabel('input')
ylabel('output')
legend('true exp1','true exp2','modeled exp1','modeled exp2')
figure(2)
plot(P_hat1_list(1,:), P_hat1_list(2,:), '.', P_hat2_list(1,:), P_hat2_list(2,:), '.')
title('parameter (a) vs. parameter (b) for two experiments from 100000 iterations')
xlabel('parameter a')
ylabel('parameter b')
legend('exp1','exp2')