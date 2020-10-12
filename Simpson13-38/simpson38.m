function simpson38
a=input('dati capatul din stanga al intervalului de integrare ');
b=input('dati capatul din dreapta al intervalului de integrare ');
i=input('in cate subintervale se va imparti intervalul dat? ');
%i trb sa fie divizibil cu 3
if i/3==fix(i/3),
   h=(b-a)/i;
   x(1)=a;
   f(1)=1/(1+x(1)^2);
   for k=2:(i+1)
       x(k)=x(1)+(k-1)*h;
       f(k)=1/(1+x(k)^2); 
   end
s1=0;s2=0;s3=0; 
for n=1:2:(i+1)
    s1=s1+f(n);
end
for m=2:2:i
    s2=s2+f(m);
end
for s=1:3:(i+1)
    s3=s3+f(s);
end
int=(3*h/8)*(3*s1+3*s2+2*s3-f(1)-f(i+1));
int 
else
 disp(' nr trb sa fie dibizibil cu 3');
end
