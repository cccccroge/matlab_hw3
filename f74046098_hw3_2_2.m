R = 10000;  %resistance
C = 0.0001; %capacitance
v = 0;      %Voltage
t = 0;      %time

h = 0.0005;
t_section = 1;
n = t_section./h;

plot(t,v,'.')
hold on
for i=1:n
   t = t + h;
   v = v + h.*(-v + 5.*sin(20.*pi.*t))./(R.*C);
   plot(t,v,'.')
   hold on
end