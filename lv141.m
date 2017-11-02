fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;

a = 1;
L = 64;
b = wiener_hopf(x, s, L);
y = filter(b,a,s);
figure(141);
	
subplot(3,1,1), plot(t,x);
title('Сигнал x(n) для L = 64');
xlabel('Час'), ylabel('Амплітуда');

subplot(3,1,2), plot(t,s);
title('Сигнал s(n) для L = 64');
xlabel('Час'), ylabel('Амплітуда');
	
subplot(3,1,3), plot(t,y);
title('Відфільтрований y(n) для L = 64');
xlabel('Час'), ylabel('Амплітуда');

n = 512;
figure(142);
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('АЧХ для L = 64');
xlabel('Частота'), ylabel('Амплітуда');

D = var(y)