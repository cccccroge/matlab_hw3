m = 1200;   %mess of brick
Y = 4000;   %oil damping constant
k = 58000;  %spring constant
x1 = 0.1;    %initial displacement(+ up /- down)
x2 = 0;     %initial velocity
t = 0;      %initial time

h = 0.001;   %step size
t_sec = 5;  %time-long
n = t_sec./h;   %times that for-loop executes

plot(t,x1,'.')
hold on
for i=1:n
    t = t + h;
    x1 = x1 + h.*x2;
    plot(t,x1,'.')
    hold on
    x2 = x2 + h.*(-k.*x1 - Y.*x2)./m;
    
    if(t > 0.8 && t < 1.2 && abs(x2) < 0.0005)
       display(t) 
    end
end
xlabel('®É¶¡(s)')
ylabel('¦ì²¾(m)')
