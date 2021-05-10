clc  
clear all
close all
Am=input('enter messgae amplitude'); 
Ac=input('enter carrier amplitude'); 
fm=input('enter message frequency'); 
fc=input('enter carrier frequency'); 
t=linspace(0,5,1000); 
Sm=Am*cos(2*pi*fm*t); 
Sc=Ac*cos(2*pi*fc*t);
figure(1);
plot(t,Sm); 
xlabel('Time'); 
ylabel('Amplitude'); 
title('Message signal')
figure(2);
plot(t,Sc); 
xlabel('Time'); 
ylabel('Amplitude'); 
title('Carrier signal'); 
DSBSC=Sm.*Sc; 
DSBFC=Sm.*Sc+Sc; 
SSBSC=Sm.*Sc;
figure(3);
plot(t,DSBFC);
title('DSBFC'); 
figure(4);
plot(t,DSBSC);
title('DSBSC');
figure(5);
plot(t,SSBSC);
title('SSBSC');