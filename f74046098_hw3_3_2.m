L = 2.*10^(-3); %inductance
R = 8;          %resistance
C = 5.*10^(-6); %capacitance
I1 = 0;
I2 = 0;
t = 0;

h = 0.000005;
t_section = 0.01;
n = t_section./h;

plot(t,cos(6000.*t),'k.')   %Vs
hold on
plot(t,I1.*R,'.')           %Vr
hold on
for i=1:n
   t = t + h; 
   I1 = I1 + h.*I2;
   plot(t,cos(6000.*t),'k.')
   hold on
   plot(t,I1.*R,'b.')
   hold on
   I2 = I2 + h.*(-6000.*sin(6000.*t)-R.*I2-I1./C)./L;
end