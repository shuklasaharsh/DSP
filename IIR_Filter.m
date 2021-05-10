clc
close all
clear all
f = input('Enter f [f1,f2,f3]: ');
f1 = f(1); f2 = f(2); f3 = f(3);
f = max(f);
T = 1./f;
fs = 100*f;
Ts = 1/fs;
t = 0:Ts:20*T-Ts;
x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);
x3 = sin(2*pi*f3*t);
x = x1 +x2 +x3;
figure; plot(t,x);
title("Signal - main - summation");
xlabel("Tine"); ylabel("Amplitude");
N_point = 1024;
X =  fft(x, N_point);
fre = (fs./2)*linspace(0,1,N_point);