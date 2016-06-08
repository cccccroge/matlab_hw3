R = 10000;  %resistance
C = 0.0001; %capacitance
v = 0;      %Voltage
t = 0;      %time

h = 0.0001;
t_section = 0.1;
n = t_section./h;

plot(t,v,'.')
hold on
for i=1:n
   t = t + h;
   v = v + h.*(-v + (-1).^floor(t./0.01).*5)./(R.*C);
   plot(t,v,'.')
   hold on
end