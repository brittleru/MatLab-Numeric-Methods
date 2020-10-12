v=[0 1.601 2.449 5.538 8.488 10.463];
U=[3.6 4.1 4.5 5.1 5.4 5.6];
U1=sqrt(12.70743+3.85*v*(17/35));
plot(v,U,'r*');
hold on 
plot (v, U1, 'g-');
xlabel('viteza(m/s)');
ylabel('tensiune(V)');
grid;
title('Sistem de masurare a vitezei cu traductor de viteza de tip fir cald')
legend('incarcare', 'caracteristica')