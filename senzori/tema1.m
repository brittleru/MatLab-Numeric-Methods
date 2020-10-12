x=[600 800 1000 1200 1400 1600];
x1=[1600 1400 1200 1000 800 600];
y=[ 86 176 271 402 480 543];
y1=[543 510 398 265 169 90];
N= 0.000247*x1.^2; 
plot ( x, y, 'ko');
hold on
plot ( x1, y1, 'r*');
hold on
plot ( x1, N, 'g-');
xlabel('debit(1/h)');
ylabel('conversie');
grid;
title('Sistem de masurare debitului cu traductor de debit cu diafragma');
legend( 'incarcare', 'descarcare', 'caracteristica');