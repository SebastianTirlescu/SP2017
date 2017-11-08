f=0.25;
t=0:0.01:6;
a=1.5; %amplitudine
x=abs(a*sin(2*pi*f*t));

plot(t, x);
xlabel('Timp[s]');
ylabel('Amplitudine [V]');