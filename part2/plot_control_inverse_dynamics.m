sim('clik_second_order_inverse_2018');

sim('control_inverse_dynamics_2018');


figure(1)

subplot(4,1,1);plot(ans.xe(:,1),ans.xe(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_theta1');title('q','fontsize',18);
hold on;
subplot(4,1,2);plot(ans.ye(:,1),ans.ye(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_theta2');
hold on;
subplot(4,1,3);plot(ans.ze(:,1),ans.ze(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_d3');
hold on;
subplot(4,1,4);plot(ans.thetae(:,1),ans.thetae(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_theta4');

figure(2)
subplot(4,1,1);plot(ans.theta1e(:,1),ans.theta1e(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_theta1_dot');title('q_dot','fontsize',18);
hold on;
subplot(4,1,2);plot(ans.theta2e(:,1),ans.theta2e(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_theta2_dot');
hold on;
subplot(4,1,3);plot(ans.d3e(:,1),ans.d3e(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_d3_dot');
hold on;
subplot(4,1,4);plot(ans.theta4e(:,1),ans.theta4e(:,2),'LineWidth',1.5);
xlabel('t'); ylabel('error_theta4_dot');