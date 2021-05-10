clear all %#ok
close all
clc
a = 0.5;
n = -10:10;
x = a.^n;
stem(n,x,'markersize', 6, 'markeredgecolor', 'b', 'markerfacecolor', 'r');