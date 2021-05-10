clc
clear all;
close all;

n = -100:1:100;
stp =(zeros(size(n)));
stp(n>=0) = 1;
figure('position',[100,100,600,400])
stem(n, stp, 'markersize', 6, 'markerfacecolor', 'g', 'markeredgecolor', 'k')
xlabel('Discrete Time')
ylabel('Amplitude')
title('Step Signal')
axis([-10 10 -1 2])