function output = Jacobian_dot(input)
% Part 1 Jacobian Differential: J(q)_dot
 theta1 = input(1,:);
    theta2 = input(2,:);
    theta1_dot = input(5,:);
    theta2_dot = input(6,:);
    Jv = [-0.5*(sin(theta1)+sin(theta1+theta2)) -0.5*sin(theta1+theta2) 0 0;
    0.5*(cos(theta1)+cos(theta1+theta2)) 0.5*cos(theta1+theta2) 0 0;
    0 0 -1 0;
    1 1 0 1;];
    
   
     Jd = [-0.5*(cos(theta1)*theta1_dot+cos(theta1+theta2)*(theta1_dot)) -0.5*cos(theta1+theta2).*(theta2_dot) 0 0;
    -0.5*(sin(theta1)*theta1_dot+sin(theta1+theta2)*(theta1_dot)) -0.5*sin(theta1+theta2)*(theta2_dot) 0 0;
    0 0 0 0;
    0 0 0 0;];
    q_dot = [input(5,:); input(6,:); input(7,:); input(8,:)];
    
    output = Jd*q_dot;
end
