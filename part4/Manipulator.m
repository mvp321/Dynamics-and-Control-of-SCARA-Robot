function output = Manipulator(input)

    theta1 = input(1,:);
    theta2 = input(2,:);
    d3 = input(3,:);
    theta4 = input(4,:);
    theta1_dot = input(5,:);
    theta2_dot = input(6,:);
    d3_dot = input(7,:);
    theta4_dot = input(8,:);
    u1 = input(9,:);
    u2 = input(10,:);
    u3 = input(11,:);
    u4 = input(12,:);
    m_l1 = 25;
    m_l2 = 25;
    m_l3 = 10;
    m_l4 = 5;
    I_l1 = 5;
    I_l2 = 5;
    I_l4 = 1;
    I_m1 = 0.0001;
    I_m2 = 0.0001;
    I_m3 = 0.01;
    I_m4 = 0.005;
    l_1 = 0.25;
    l_2 = 0.25;
    k_r1 = 1;
    k_r2 = 1;
    k_r3 = 50;
    k_r4 = 20;
    g = 9.8;
    Fv_1 = 0.0001;
    Fv_2 = 0.0001;
    Fv_3 = 0.01;
    Fv_4 = 0.005;
    
    b11=l_1^2*m_l1+(0.25+l_2^2+l_2*cos(theta2))*m_l2+(0.5+0.5*cos(theta2))*(m_l3+m_l4)+I_l1+I_l2+I_l4+I_m1*k_r1^2+I_m2+I_m3+I_m4;
    b12=(0.5*l_2*cos(theta2)+l_2^2)*m_l2+(0.25+0.25*cos(theta2))*(m_l3+m_l4)+I_l2+I_l4+I_m2*k_r2++I_m3+I_m4;
    b13=-k_r3*I_m3;
    b14=k_r4*I_m4+I_l4;
    b21=b12;
    b22=l_2^2*m_l2+0.25*(m_l4+m_l3)+I_l2+I_l4+I_m2*k_r2^2+I_m4+I_m3;
    b23=-k_r3*I_m3;
    b24=k_r4*I_m4+I_l4;
    b31=b13;
    b32=b23;
    b33=I_m3*k_r3^2+m_l3+m_l4;
    b34=0;
    b41=b14;
    b42=b24;
    b43=b34;
    b44=I_m4*k_r4^2+I_l4;
    B=[b11 b12 b13 b14; b21 b22 b23 b24; b31 b32 b33 b34; b41 b42 b43 b44];
    C_cap=[(-l_2*m_l2*sin(theta2)-0.5*(m_l4+m_l3)*sin(theta2))/2*theta2_dot (-l_2*m_l2*sin(theta2)-0.5*(m_l4+m_l3)*sin(theta2))/2*(theta1_dot+theta2_dot) 0 0;
    -(-l_2*m_l2*sin(theta2)-0.5*(m_l4+m_l3)*sin(theta2))/2*theta1_dot 0 0 0; 0 0 0 0; 0 0 0 0];
    G = [0; 0; -(m_l3+m_l4)*g; 0];
    F = diag([k_r1^2*Fv_1 k_r2^2*Fv_2 k_r3^2*Fv_3 k_r4^2*Fv_4]);
    
    tou = [u1 u2 u3 u4]';
    tou_1 = C_cap*[theta1_dot theta2_dot d3_dot theta4_dot]'+F*[theta1_dot theta2_dot d3_dot theta4_dot]'+G;
    
    q_dot_dot = inv(B)*(tou-tou_1);
    
    output = q_dot_dot;

end