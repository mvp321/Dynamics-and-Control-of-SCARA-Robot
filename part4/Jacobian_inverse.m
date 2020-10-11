function output = Jacobian_inverse(input)
% Part 1 Jacobian inverse
    theta1 = input(1,:);
    theta2 = input(2,:);
    Jv =  [-0.5*(sin(theta1)+sin(theta1+theta2)) -0.5*sin(theta1+theta2) 0 0;
    0.5*(cos(theta1)+cos(theta1+theta2)) 0.5*cos(theta1+theta2) 0 0;
    0 0 -1 0;
    1 1 0 1;];
    
    output = inv(Jv)*input(5:8,:);
end
