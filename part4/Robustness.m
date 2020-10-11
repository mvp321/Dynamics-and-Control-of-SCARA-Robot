function output  = Robustness(input)
%ROBUSTENESS Summary of this function goes here
%   Detailed explanation goes here
e_1=input(1);
e_2=input(2);
e_3=input(3);
e_4=input(4);
e_1_dot=input(5);
e_2_dot=input(6);
e_3_dot=input(7);
e_4_dot=input(8);
D=[zeros(4,4) eye(4)]';
Q=eye(8);
zita=[e_1 e_2 e_3 e_4 e_1_dot e_2_dot e_3_dot e_4_dot]';
z=D'*Q*zita;
n_z=norm(z,2);
epsilon=0.06;
ro=70;
if n_z>=epsilon
    output=ro*z/n_z;
else
    output=ro*z/epsilon;
end