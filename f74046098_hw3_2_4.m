R = 100;        %resistance
C = 0.000001;   %capacitance
v = 0;          %Voltage
t = 0;          %time

h = 0.0001;
t_section = 0.1;
n = t_section./h;

plot(t,v,'.')
hold on
for i=1:n
   t = t + h;
   V = (-1).^(floor((t+0.01)./0.02)).*(500.*t - 10.*floor((t+0.01)./0.02));
   v = v + h.*(-v + V./(R.*C));
   plot(t,V-v,'.')
   hold on
end