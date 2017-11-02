fs = 200;
N = 400;
t = (0:(N - 1))/fs;
s = sin(2*pi*10*t) + sin(2*pi*20*t);
v = 2*randn(size(t)); 
x = s + v;