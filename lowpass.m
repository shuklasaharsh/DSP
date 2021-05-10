clc;
clear all;
close all;
fs = 100;
t = 0:0.01:1;
x1 = sin(2*pi*5*t);
subplot(4,1,1);
plot(t,x1);
title('signal1');
xlabel('Time');
ylabel('Amplitude');
x2 = sin(2*pi*15*t);
subplot(4,1,2);
plot(t,x2);
title('signal2');
xlabel('Time');
ylabel('Amplitude');
x3 = sin(2*pi*30*t);
subplot(4,1,3);
plot(t,x3);
title('signal3');
xlabel('Time');
ylabel('Amplitude');
x = x1+x2+x3;
subplot(4,1,4);
plot(t,x);
title('summing signal');
xlabel('Time');
ylabel('Amplitude');
y=fft(x);
y1=abs(y);
figure(2);
plot(t,y1);
title('FFT of summing signal');
xlabel('Time');
ylabel('Amplitude');
[b a]=butter(6,0.1,'low');
figure(3);
freqz(b,a);
filter1=filter(b,a,x);
figure(4);
subplot(2,1,1);
plot(t,filter1);
title('filtered signal');
y2=fft(filter1);
y3=abs(y2);
subplot(2,1,2);
plot(t,y3);
title('FFT of 5Hz LPF signal');