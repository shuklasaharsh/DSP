clc
clear all;
close all;

n = -10:10;
rmp = zeros(size(n));
rmp(n>=0) = n(n>=0) +1;
stem(n, rmp, 'markersize', 6, 'markerfacecolor', 'g', 'markeredgecolor', 'k')
xlabel('Discrete Time')
ylabel('Amplitude')
title('Ramp Signal')
axis([-10 10 -10 10])