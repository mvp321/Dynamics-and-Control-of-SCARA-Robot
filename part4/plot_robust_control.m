sim('clik_second_order_inverse_2018');
sim('control_robust_second_order_inversion_algorithms_2018');

figure(1)
subplot(4,1,1);plot(ans.xe.time,ans.xe.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_x');title('q_dot','fontsize',18);
hold on;
subplot(4,1,2);plot(ans.ye.time,ans.ye.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_y');
hold on;
subplot(4,1,3);plot(ans.ze.time,ans.ze.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_z');
hold on;
subplot(4,1,4);plot(ans.thetae.time,ans.thetae.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_theta');

figure(2)
subplot(4,1,1);plot(ans.theta1e.time,ans.theta1e.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_dot_x');title('q','fontsize',18);
hold on;
subplot(4,1,2);plot(ans.theta2e.time,ans.theta2e.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_dot_y');
hold on;
subplot(4,1,3);plot(ans.d3e.time,ans.d3e.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_dot_z');
hold on;
subplot(4,1,4);plot(ans.theta4e.time,ans.theta4e.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('e_q_dot_theta');