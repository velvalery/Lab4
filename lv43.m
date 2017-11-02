ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,w] = lms60(ecg,d,mu);

disp('Коефіцієнти адаптивного фільтра: ');
disp(w)