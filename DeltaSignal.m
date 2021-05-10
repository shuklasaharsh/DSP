clc
clear all; %#ok<*CLALL>
close all;

n = -100:1:100;
imp =(zeros(size(n)));
    imp(n==0) = 1;
figure('position',[100,100,600,400])
stem(n, imp, 'markersize', 6, 'markerfacecolor', 'g', 'markeredgecolor', 'k')
xlabel('Discrete Time')
ylabel('Amplitude')
title('Delta Signal')
axis([-10 10 -1 2])