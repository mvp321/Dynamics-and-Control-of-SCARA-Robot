sim('second_order_inversion_algorithms_2018');

figure(1)
subplot(4,1,1);plot(ans.x.time,ans.x.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('error_x');
hold on;
subplot(4,1,2);plot(ans.y.time,ans.y.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('error_y');
hold on;
subplot(4,1,3);plot(ans.z.time,ans.z.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('error_z');
hold on;
subplot(4,1,4);plot(ans.theta.time,ans.theta.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('error_theta');

figure(2)
subplot(4,1,1);plot(ans.theta1.time,ans.theta1.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('theta1');
hold on;
subplot(4,1,2);plot(ans.theta2.time,ans.theta2.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('theta2');
hold on;
subplot(4,1,3);plot(ans.d3.time,ans.d3.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('d3');
hold on;
subplot(4,1,4);plot(ans.theta4.time,ans.theta4.signals.values(:,1),'LineWidth',1.5);
xlabel('t'); ylabel('theta4');