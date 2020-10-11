function [P] = pe_function()
%PE Summary of this function goes here
%   Detailed explanation goes here
p0=[0;-0.8;0];
p1=[0;-0.8;0.5];
p2=[0.5;-0.6;0.5];
p3=[0.8;0;0.5];
p4=[0.8;0;0];
t=0:0.001:4;

sf1=norm_function(p0,p1);
si1=0;
tf1=0.6;
ti1=0;
[b1]=trajectory_function(sf1,si1,tf1,ti1);
s1=b1(1,:);
s1_dot=b1(2,:);
s1_dot_dot=b1(3,:);

sf2=norm_function(p1,p2);
si2=0;
tf2=2.2;
ti2=0.4;
[b2]=trajectory_function(sf2,si2,tf2,ti2);
s2=b2(1,:);
s2_dot=b2(2,:);
s2_dot_dot=b2(3,:);

sf3=norm_function(p2,p3);
si3=0;
tf3=3.6;
ti3=1.8;
[b3]=trajectory_function(sf3,si3,tf3,ti3);
s3=b3(1,:);
s3_dot=b3(2,:);
s3_dot_dot=b3(3,:);

sf4=norm_function(p3,p4);
si4=0;
tf4=4;
ti4=3.4;
[b4]=trajectory_function(sf4,si4,tf4,ti4);
s4=b4(1,:);
s4_dot=b4(2,:);
s4_dot_dot=b4(3,:);

for i=1:length(t)
pe(:,i)=p0+s1(i)*(p1-p0)/norm_function(p0,p1)+s2(i)*(p2-p1)/norm_function(p1,p2)+s3(i)*(p3-p2)/norm_function(p2,p3)+s4(i)*(p4-p3)/norm_function(p3,p4);
end
pd=pe;

for i=1:length(t)
pe_dot(:,i)=s1_dot(i)*(p1-p0)/norm_function(p0,p1)+s2_dot(i)*(p2-p1)/norm_function(p1,p2)+s3_dot(i)*(p3-p2)/norm_function(p2,p3)+s4_dot(i)*(p4-p3)/norm_function(p3,p4);
end
pd_dot=pe_dot;

for i=1:length(t)
pe_dot_dot(:,i)=s1_dot_dot(i)*(p1-p0)/norm_function(p0,p1)+s2_dot_dot(i)*(p2-p1)/norm_function(p1,p2)+s3_dot_dot(i)*(p3-p2)/norm_function(p2,p3)+s4_dot_dot(i)*(p4-p3)/norm_function(p3,p4);
end
pd_dot_dot=pe_dot_dot;

P=[pd;pd_dot;pd_dot_dot;t]; %10rows matix: 1-3 is pe,4-6 is pe_dot, 7-9 is pe_dot_dot, 10 is time
end

