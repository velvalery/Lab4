ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);

figure(421);
	
subplot(3,1,1), plot(t,ecg);
title('Сигнал ecg');
xlabel('Час'), ylabel('Амплітуда');

subplot(3,1,2), plot(t,e);
title('Відфільтрований сигнал e(n)');
xlabel('Час'), ylabel('Амплітуда');

subplot(3,1,3), plot(t, y);
title('Вихідний сигнал y(n)');
xlabel('Час'), ylabel('Амплітуда');