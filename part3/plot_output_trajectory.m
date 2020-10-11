[P] = pe_function();

t=P(10,:);

figure(2);
subplot(3,1,1);
plot(t, P(1,:));
subplot(3,1,2);
plot(t, P(2,:));
subplot(3,1,3);
plot(t, P(3,:));

figure(3);
subplot(3,1,1);
plot(t, P(4,:));
subplot(3,1,2);
plot(t, P(5,:));
subplot(3,1,3);
plot(t, P(6,:));

figure(4);
subplot(3,1,1);
plot(t,P(7,:));
subplot(3,1,2);
plot(t, P(8,:));
subplot(3,1,3);
plot(t, P(9,:));

figure(1)
plot3(P(1,:),P(2,:),P(3,:));