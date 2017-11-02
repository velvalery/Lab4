fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t) + sin(2*pi*20*t);
x = s+v;

L = 32;
b = wiener_hopf(x, s, L);
a = 1;
y = filter(b,a,s);
figure(131);

subplot(3,1,1), plot(t,x);
title('Сигнал x(n)');
xlabel('Час'), ylabel('Амплітуда');

subplot(3,1,2), plot(t,s);
title('Сигнал s(n)');
xlabel('Час'), ylabel('Амплітуда');

subplot(3,1,3), plot(t,y);
title('Відфільтрований сигнал y(n)');
xlabel('Час'), ylabel('Амплітуда');

n = 512;
figure(132);
[h, w] = freqz(b,a,n);
mag = abs(h);
plot(w/(2*pi)*fs, mag);
title('АЧХ');
xlabel('Частота'), ylabel('Амплітуда');

D = var(y)