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

Omega_0 = 2*%pi*(1000);
//omega_s = 2*%pi*(8192);

v_n = 0:8191;
t=v_n*T;

// Sinal : sin(Omega_0*T)

//Letra A (sinal discretizado)

x_n = sin(Omega_0*t); 
//Letra B
//tá no final do código todos os sounds

////Letra C 

x_w = fftshift(fft(x_n ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);


subplot(4,4,1)
title('')
plot2d3(w, abs(x_w)) 

subplot(4,4,2)
title('')
plot2d3(w, x_w) 

//Letra D
//Frequencia de 1500

omega3 = 2*%pi*(1500);
x_h = sin(omega3*t);

x_wh = fftshift(fft(x_h ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);

subplot(4,4,3)
title('')
plot2d3(t(1:51),x_h(1:51) )

subplot(4,4,4)
title('')
plot2d3(w,atan(imag(x_wh),real(x_wh)))

//frequencia 2000

omega4 = 2*%pi*(2000);
x_i = sin(omega4*t);

x_wi = fftshift(fft(x_i ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);
//
subplot(4,4,5)
title('')
plot2d3(t(1:51),x_i(1:51) )

subplot(4,4,6)
title('')
plot2d3(w, atan(imag(x_wi),real(x_wi)))



//wavwrite(x_n,'C:\Pasta Pessoal\Periodo 20.2\PDS\My projects\Project 1\sounds\som1.wav'); 
//y=loadwave("C:\Pasta Pessoal\Periodo 20.2\PDS\My projects\Project 1\sounds\som1.wav");
//sound(x_n, 1/T);
//sound(x_h, 1/T);
//sound(x_i, 1/T);


// Letra F
//3500
omega5 = 2*%pi*(3500);
x_j = sin(omega5*t);

x_wj = fftshift(fft(x_j ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);
////
subplot(4,4,7)
title('')
plot2d3(t(1:51),x_j(1:51) )
//
subplot(4,4,8)
title('')
plot2d3(w, atan(imag(x_wj),real(x_wj))) 

//400
omega6 = 2*%pi*(4000);
x_k = sin(omega6*t);

x_wk = fftshift(fft(x_k ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);
//
subplot(4,4,9)
title('')
plot2d3(t(1:51),x_k(1:51) )

subplot(4,4,10)
title('')
plot2d3(w, atan(imag(x_wk),real(x_wk))) 

//4500
omega7 = 2*%pi*(4500);
x_l = sin(omega7*t);

x_wl = fftshift(fft(x_l ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);

subplot(4,4,11)
title('')
plot2d3(t(1:51),x_l(1:51) )

subplot(4,4,12)
title('')
plot2d3(w, atan(imag(x_wl),real(x_wl))) 

//5000
omega8 = 2*%pi*(5000);
x_m = sin(omega8*t);

x_wm = fftshift(fft(x_m ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);


subplot(4,4,13)
title('')
plot2d3(t(1:51),x_m(1:51) )

subplot(4,4,14)
title('')
plot2d3(w, atan(imag(x_wm),real(x_wm))) 

//5500
omega9 = 2*%pi*(5500);
x_p = sin(omega9*t);

x_wp = fftshift(fft(x_p ,-1)*2*%pi*T);
w = linspace(-1, 1-T, 1/T)/(2*T);


subplot(4,4,15)
title('')
plot2d3(t(1:51),x_p(1:51) )

subplot(4,4,16)
title('')
plot2d3(w, atan(imag(x_wp),real(x_wp))) 

sound(x_n, 1/T);//1000
sound(x_h, 1/T);//1500
sound(x_i, 1/T);//2000


sound(x_j, 1/T);//3500
sound(x_k, 1/T);//400
sound(x_l, 1/T);//4500
sound(x_m, 1/T);//5000
sound(x_p, 1/T);//5500






