x=[0 0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4 0.45 0.5];
y=[ 103345.623 103010.405 85843.631 77891.301 70013.015 62163.001 56683.405 52352.502 48855.604 45763.592 42952.611];
N= 103345.623./(1+8.322*x.^2); 
plot ( x, y, 'k*');
hold on
plot ( x, N, 'g-');
xlabel('deplasare(mm)');
ylabel('presiune(Pa)');
grid;
title('Sistem de masurare a deplasarii cu traductor de deplasare de tip duza-paleta');
legend( 'incarcare', 'caracteristica');