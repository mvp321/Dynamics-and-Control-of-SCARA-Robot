function [n_cap] = n_cap(input)
    theta2=input(2,:);
    theta1_dot=input(5,:);
    theta2_dot=input(6,:);
    d3_dot=input(7,:);
    theta4_dot=input(8,:);
    m_l2 = 25;
    m_l3 = 10;
    m_l4 = 0;
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
    C_cap=[(-l_2*m_l2*sin(theta2)-0.5*(m_l4+m_l3)*sin(theta2))/2*theta2_dot (-l_2*m_l2*sin(theta2)-0.5*(m_l4+m_l3)*sin(theta2))/2*(theta1_dot+theta2_dot) 0 0;
    -(-l_2*m_l2*sin(theta2)-0.5*(m_l4+m_l3)*sin(theta2))/2*theta1_dot 0 0 0; 0 0 0 0; 0 0 0 0];
    G = [0; 0; -(m_l3+m_l4)*g; 0];
    F = diag([k_r1^2*Fv_1 k_r2^2*Fv_2 k_r3^2*Fv_3 k_r4^2*Fv_4]);
    n_cap = C_cap*[theta1_dot theta2_dot d3_dot theta4_dot]'+F*[theta1_dot theta2_dot d3_dot theta4_dot]'+G;
end
