

omega = 2*pi*0.025;
t = (-50:0.1:50);
x =0.5+0.5*square(2*pi*0.025*t+0.5,17.5);
y=abs(fft(x));
plot(t, x);
title('x(t)');
axis([-50 50 0 1.1]);
figure,stem(t ,y);
title('Spectru de amplitudini');
axis([-10 10 0 4]);
syms k,x;

xk=symsum(x*exp(-i*k*omega*t),k,0,39);
x=1/t*(symsum(xk*exp(i*k*omega*t),k,-inf,inf)

xr=1/T*(symsum(xk*exp(i*k*omega*t),k,-50,50))
