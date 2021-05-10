clear all
clc
x = input('Enter The function []: ');
y = [];
n = length(x);
for i = (1:length(x))
    y = [y, i - 1]; %#ok
end

y = dec2bin(y);

z= [];

for i = (1:length(x))
    z = [z;y(i,end:-1:1)]; %#ok
end

z_f = bin2dec(z);