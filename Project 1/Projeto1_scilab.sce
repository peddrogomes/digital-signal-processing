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

subplot(331)
title('')
plot2d3(t(1:51), x_n(1:51) ) 

subplot(332)
title('')
plot2d(t(1:51), x_n(1:51) ) 

//Letra C falta terminar

//x_w = fftshift(fft(x_n ,-1)*2*%pi*T);
//x_w2 = fft(x_t,-1);
//w = linspace(-1, 1-T, 1/T)/(2*T);


//subplot(333)
//title('')
//plot2d(w, abs(x_w)) 

//subplot(224)
//title('')
//plot2d(w, x_w2 ) 

//Letra D
//Frequencia de 1500

omega3 = 2*%pi*(1500);
x_h = sin(omega3*t);

subplot(333)
title('')
plot2d3(t(1:51),x_h(1:51) )

//frequencia 2000

omega4 = 2*%pi*(2000);
x_i = sin(omega4*t);

subplot(334)
title('')
plot2d3(t(1:51),x_i(1:51) )


//wavwrite(x_n,'C:\Pasta Pessoal\Periodo 20.2\PDS\My projects\Project 1\sounds\som1.wav'); 
//y=loadwave("C:\Pasta Pessoal\Periodo 20.2\PDS\My projects\Project 1\sounds\som1.wav");
//sound(x_n, 1/T);
//sound(x_h, 1/T);
//sound(x_i, 1/T);


// Letra F
//3500
omega5 = 2*%pi*(3500);
x_j = sin(omega5*t);

subplot(335)
title('')
plot2d3(t(1:51),x_j(1:51) )

//400
omega6 = 2*%pi*(400);
x_k = sin(omega6*t);

subplot(336)
title('')
plot2d3(t(1:51),x_k(1:51) )

//4500
omega7 = 2*%pi*(4500);
x_l = sin(omega7*t);

subplot(337)
title('')
plot2d3(t(1:51),x_l(1:51) )

//5000
omega8 = 2*%pi*(5000);
x_m = sin(omega8*t);

subplot(338)
title('')
plot2d3(t(1:51),x_m(1:51) )

//5500
omega9 = 2*%pi*(5500);
x_p = sin(omega9*t);

subplot(339)
title('')
plot2d3(t(1:51),x_p(1:51) )

//sound(x_n, 1/T);//1000
//sound(x_h, 1/T);//1500
//sound(x_i, 1/T);//2000
//sound(x_j, 1/T);//3500
//sound(x_k, 1/T);//400
//sound(x_l, 1/T);//4500
//sound(x_m, 1/T);//5000
//sound(x_p, 1/T);//5500






