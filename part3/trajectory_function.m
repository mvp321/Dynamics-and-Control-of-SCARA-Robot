function [b] = trajectory_function(sf,si,tf,ti)
%TRAJECTORY1 Summary of this function goes here
%   Detailed explanation goes here
t=0:0.001:4;
sssc=(5*abs(sf-si))/((tf+ti)^2-4*ti*tf);
tc=(tf+ti)/2-(1/2)*sqrt((((tf+ti)^2)*sssc-4*(sf-si+sssc*ti*tf))/sssc);
for i=1:length(t)
    if (t(i)<ti)
        s(i)=0;
        s_dot(i)=0;
        s_dot_dot(i)=0;
    elseif (ti<=t(i) && t(i)<=tc)
        s(i)=si+(1/2)*sssc*((t(i)-ti)^2);
        s_dot(i)=sssc*(t(i)-ti);
        s_dot_dot(i)=sssc;
       %0 to tc
    elseif (t(i)>tc && t(i)<=(tf-tc+ti))
        s(i)=si+sssc*(tc-ti)*(t(i)-ti-(tc-ti)/2);
        s_dot(i)=sssc*(tc-ti);
        s_dot_dot(i)=0;
        %tc to (tf-tc)
    elseif (t(i)>(tf-tc) && t(i)<=tf)
        s(i)=sf-(1/2)*sssc*((tf-t(i))^2);
        s_dot(i)=sssc*(tf-t(i));
        s_dot_dot(i)=-sssc;
        % (tf-tc) to tf
    elseif (t(i)>tf)
        s(i)=sf;
        s_dot(i)=0;
        s_dot_dot(i)=0;
    end
    a(1,i)=s(i);
    a(2,i)=s_dot(i);
    a(3,i)=s_dot_dot(i);
    b=[a];
     
end

