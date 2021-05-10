clc
clear all %#ok<*CLALL>
close all
n = -10:10;
x = 0.5.^n;
noise = 100*rand(size(x));
xwn = x+noise; %adding noise with amplification of 100 since noise is between 0 and 1
plot(n,x);
hold on
plot(n,xwn);

noise_f = [noise,0,0];
noise_g = [0,noise,0];
noise_h = [0,0,noise];

noise_sub = noise_f+noise_g+noise_h;
noise_sub = noise_sub/3;
noise_sub=noise_sub(2:22);
y = xwn-noise_sub;

plot(n,y);
hold off;
legend('Signal','signal with noise', 'Signal after smoothing');
title('Noise')
