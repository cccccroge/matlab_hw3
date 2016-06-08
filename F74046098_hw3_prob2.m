R = 10000;  %resistance
C = 0.0001; %capacitance
v = 0;      %Voltage
t = 0;      %time

h = 0.0005;
t_section = 1;
n = t_section./h;

figure(1)
plot(t,v,'.')
hold on
for i=1:n
   t = t + h;
   v = v + h.*(-v + 5.*sin(20.*pi.*t))./(R.*C);
   plot(t,v,'.')
   hold on
end

h = 0.0001;
t_section = 0.1;
n = t_section./h;

figure(2)
plot(t,v,'.')
hold on
for i=1:n
   t = t + h;
   v = v + h.*(-v + (-1).^floor(t./0.01).*5)./(R.*C);
   plot(t,v,'.')
   hold on
end

R = 100;
C = 0.000001;

figure(3)
plot(t,v,'.')
hold on
for i=1:n
   t = t + h;
   V = (-1).^(floor((t+0.01)./0.02)).*(500.*t - 10.*floor((t+0.01)./0.02));
   v = v + h.*(-v + V./(R.*C));
   plot(t,V-v,'.')
   hold on
end
