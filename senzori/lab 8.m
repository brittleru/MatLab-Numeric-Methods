v=[0 1.601 2.449 5.538 8.488 10.463];
U=[3.600 4.100 4.500 5.100 5.400 5.600];
v1=0:0.0001:10.463;
U1=sqrt(12.707+3.85*v1.^(17/35));
plot(v,U,'bx');
hold on 
plot (v1, U1, 'g-');
xlabel('\upsilon [m/s]');
ylabel('U [V]');
p=legend('incarcare',['U=$$/sqrt((12.707+3.85*v^(0.68)))$$'))
grid;
set(p, 'Interpreter', 'latex', 'fontsize',12)
title('Caracteristica statica a unui sistem de masurare a vitezei')