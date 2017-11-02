fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
	
L = 128;
mu = 0.000001;
[y,e,b] = lms(x,s,mu,L);
	
a = 1;
figure(321);
	
subplot(3,1,1), plot(t,x);
title('Сигнал s(n)');
xlabel('Час'), ylabel('Амплітуда');
	
subplot(3,1,2), plot(t,y);
title('Відфільтрований сигнал y(n)');
xlabel('Час'), ylabel('Амплітуда');
	
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('Ачх');
xlabel('Частота'), ylabel('Амплітуда');