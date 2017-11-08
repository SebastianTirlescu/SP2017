f=0.25;
t=0:0.01:8;
a=0.8; %amplitudine
x=abs(a*sin(2*pi*f*t))-(a*sin(2*pi*f*t));

plot(t, x);
xlabel('Timp[s]');
ylabel('Amplitudine [V]');