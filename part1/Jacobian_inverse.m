function output=Jacobian_inverse(input)
%INPUT is (theta1, theta2, d3, theta4,xd_dot_plus_Ke) 
theta1=input(5,:); d1=0; a1=0.5; alpha1=0; %parameter link1
theta2=input(6,:); d2=0; a2=0.5; alpha2=0; %parameter link2
theta3=0; d3=input(7,:); a3=0; alpha3=0;  %parameter link3
theta4=input(8,:); d4=0; a4=0; alpha4=0;  %parameter link4
    Jv = [-0.5*(sin(theta1)+sin(theta1+theta2)) -0.5*sin(theta1+theta2) 0 0;
          0.5*(cos(theta1)+cos(theta1+theta2)) 0.5*cos(theta1+theta2) 0 0;
          0 0 -1 0; 
          1 1 0 1;];
    output = inv(Jv)*input(1:4,:);
end