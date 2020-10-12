function simpson13
%Metoda Simpson 1/3
a=input('dati capatul din stanga al intervalului de integrare ');
b=input('dati capatul din dreapta al intervalului de integrare ');
i=input('in cate subintervale se va imparti intervalul dat? ');
%i trb sa fie par
if i/2==fix(i/2)
   h=(b-a)/i;
   x(1)=a;
   f(1)=1/(1+x(1)^2);
for k=2:(i+1)
    x(k)=x(1)+(k-1)*h;
    f(k)=1/(1+x(k)^2);
end
plot(x,f);
title('Graficul functiei in intervalul dorit')
xlabel('x')
ylabel('f ( x )')
grid;
s1=0;s2=0;
for l=1:2:(i+1)
    s1=s1+f(l);
end
for m=2:2:i
    s2=s2+f(m);
end
int=(h/3)*(2*s1+4*s2-f(1)-f(i+1));
int
else
 disp(' nr trb sa fie par');
end 