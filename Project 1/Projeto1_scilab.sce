//UFPE
//Pedro Henrique de A. Gomes
//Isaac Neves Farias

//Eng.Eletronica DES


//Projeto 1 de PDS 2020.2
//
clear;
clc;

// Variaveis

T=1/8192;

Omega_s = 2*%pi/T;
Omega_0 = 2*%pi*(1000);

v_n = 0:8191;
t=v_n*T;

// Sinal : sin(Omega_0*T)

//Letra A

x_n = sin(Omega_0*t); 
x_t = sin(Omega_s*t);
//Letra B

subplot(221)
title('')
plot2d3(t(1:51), x_n(1:51) ) 

subplot(222)
title('')
plot2d(t(1:51), x_n(1:51) ) 

//Letra C

x_w = fft(x_n ,-1)*2*%pi*T;
x_w2 = fft(x_t,-1);
w = linspace(-1, 1-T, 1/T)/(2*T);


subplot(223)
title('')
plot2d(w, abs(x_w)) 

subplot(224)
title('')
plot2d(w, x_w2 ) 

//Letra D

//wavwrite(x_n,'C:\Pasta Pessoal\Periodo 20.2\PDS\My projects\Project 1\sounds\som1.wav'); 
//y=loadwave("C:\Pasta Pessoal\Periodo 20.2\PDS\My projects\Project 1\sounds\som1.wav");
sound(x_n, 1/T);













