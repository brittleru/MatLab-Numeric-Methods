function patrate_micute
%Metoda de aproximare in sensul celor mai mici patrate
 x=[-2;-1;0;1;2];
 y=[15;10;7;1;-4];
 n=length(x);
 m=input('gradul polinomului de interpolare= ');
for k=1:(2*m+1)
    s(k)=0;
    for i=1:n
        s(k)=s(k)+(x(i))^(k-1);
    end
end
%se calculeaza vectorul s
for k=1:(m+1)
    bb(k)=0;
    for i=1:n
     bb(k)=bb(k)+y(i)*(x(i))^(k-1);
    end
end
%se calculeaza vectorul b
b=bb';
for i=1:(m+1)
    for j=1:(m+1)
        a(i,j)=s(i+j-1);
    end
end
c=inv(a)*b;
pol=c'
for i=1:(m+1)
    poll(m+2-i)=pol(i);
end
y
polyval(poll,x) 