%Código em matlab para trabalho do 
% curso de Sinais e Sistemas Lineares
%do curso de engenharia elétrica do IME
clc, clearvars


%Definindo o domínio
T = 2*pi; Ampl =1; tal = T/4; N = 100; L = T/2;
dt = 2*L/(N-1);
t = -L:dt:L;

%Definindo a função
f = 0*t;
f(N/4:3*N/4) = Ampl;
plot(t,f), hold on

A0 = sum(f.*ones(size(t)))*dt/L;
fFS = A0/2;
for k=1:20
Ak = sum(f.*cos(pi*k*t/L))*dt/L;
Bk = sum(f.*sin(pi*k*t/L))*dt/L;
fFS = fFS + Ak*cos(k*pi*t/L) + Bk*sin(k*pi*t/L);
end
plot(t,f,'k','LineWidth',2)
plot(t,fFS,'r-', 'LineWidth',1.2), hold off
