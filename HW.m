%HOMEWORK GAUSSIAN NUMBERS
clc
clear all; %#ok
close all;
n = -1000:1000;
x = rand(size(n));
x = 100*x;
figure
stem(n,x, 'markerfacecolor', 'r', 'markeredgecolor', 'b', 'markersize', 6);
hold on
axis([-100 100 -100 100])
n = n+0.5;
y = -100*rand(size(n));
stem(n,y,'markersize', 6, 'markeredgecolor', 'b', 'markerfacecolor', 'r');
title('Random generated noise')
hold off;