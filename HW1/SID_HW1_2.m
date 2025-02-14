u = linspace(0,1,100);
y = tan(u*0.9*pi/2);
h = y';
t = u';
x = 0;
Y_hat_list = [];
for n = [1:20]
 x = x + t.^n;
 T_hat = (x'*x)\x'*h;
 Y_hat = T_hat * x;
 Y_hat_list = [Y_hat_list, Y_hat];
end
figure(1)
plot( u, y, u, Y_hat_list(:,1), u, Y_hat_list(:,5), u, Y_hat_list(:,10), u, Y_hat_list(:,15))
title('measured output and modeled output vs. input')
xlabel('input')
ylabel('output')
legend('measured','modeled n=1','modeled n=5','modeled n=10','modeled n=15')