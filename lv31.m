fs = 200;
N =  800;s
t = (0:length(N)-1)/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
v = 2*randn(size(t));  
x = s+v;