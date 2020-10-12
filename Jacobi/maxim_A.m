function maxim_A
%metoda jacobi pentru aflarea valorilor proprii
A=input('matricea sistemului = ');
[m n]=size(A);
max=0;
if m~=n 
   disp('matricea sistemului trebuie sa fie patratatica');
else
    for i=1:m
        for j=1:m
            if j~=i
                if abs(A(i,j))>max
                    max=A(i,j);
                    p=i;
                    q=j;
                end
            end
        end
    end
end
for k=1:200
    R=eye(m);
    RR=R;
    [p q]=maxpq(A);
    fi=0.5*atan(2*A(p,q)/(A(p,p)-A(q,q)));
    R(p,p)=cos(fi);
    R(q,q)=R(p,p);
    R(p,q)=-sin(fi);
    R(q,p)=-R(p,q);
    RR(p,p)=cos(-fi);
    RR(q,q)=RR(p,p);
    RR(p,q)=-sin(-fi);
    RR(q,p)=-RR(p,q);
    A=RR*A*R;
end
A 