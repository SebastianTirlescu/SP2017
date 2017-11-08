# SP2017

f=1
t1 = 0:0.002:10; %2ms rezolutie temporala
t2 = 0:0.02:10;  %20ms      
t3 = 0:0.2:10;   %200ms
fs = 1000;
cycles = fs*10;

x=square((2*pi)*f*t1);
y=square((2*pi)*f*t2);
z=square((2*pi)*f*t3);


%factorul de umplere il vom seta folosindu-ne de esantionare;
duty = 25;
oc_samp = fs/f;
on_samp = (oc_samp*duty)/100;
off_samp = oc_samp - on_samp;
temp=0;
for(i=1:ceil(cycles))
    x(temp+on_samp+1:i*oc_samp) = 0;
    
    temp=temp+oc_samp;
end

for(i=1:ceil(cycles))
    y(temp+on_samp+1:i*oc_samp) = 0;
    
    temp=temp+oc_samp;
end

for(i=1:ceil(cycles))
    z(temp+on_samp+1:i*oc_samp) = 0;
    
    temp=temp+oc_samp;
end


figure(1);
plot(t1,x(1:length(t1)));
xlabel('Timp[s]');
ylabel('Amplitudine');
figure(2);
plot(t2,y(1:length(t2)));
xlabel('Timp[s]');
ylabel('Amplitudine');
figure(3);
plot(t3,z(1:length(t3)));
xlabel('Timp[s]');
ylabel('Amplitudine');
