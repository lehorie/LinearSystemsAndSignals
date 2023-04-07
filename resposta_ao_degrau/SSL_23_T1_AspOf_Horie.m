%Código em matlab para trabalho do 
% curso de Sinais e Sistemas Lineares
%do curso de engenharia elétrica do IME

clearvars, clc
t=0:0.1:20;
Ampl =1;
T = 2*pi;
w = 2*pi/T;

x  = 1/4;
for n = 1:1000
    x = x+((2*Ampl)/(n*pi))*sin(n*pi/4)*cos(n*w*t);
end

figure
plot(t,x);
xlabel('tempo(seg)');
ylabel('Amplitude');
title('Hat function');