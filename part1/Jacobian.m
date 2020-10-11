function output = Jacobian(input)
% Part 1 Jacobian: J(q)
    theta1 = input(5,:);
    theta2 = input(6,:);
    Jv = [-0.5*(sin(theta1)+sin(theta1+theta2)) -0.5*sin(theta1+theta2) 0 0; 0.5*(cos(theta1)+cos(theta1+theta2)) 0.5*cos(theta1+theta2) 0 0; 0 0 -1 0; 1 1 0 1;];
    q_dot = [input(1,:); input(2,:); input(3,:); input(4,:)];
    output = Jv*q_dot;
end
