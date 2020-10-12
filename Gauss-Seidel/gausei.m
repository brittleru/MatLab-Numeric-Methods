function f=jacobi
A=input('matricea atasata sistemului = ');
B=input('matricea rezultatelor = ');
pasi=input('cate iteratii? ');
[m n]=size(A);
if m~=n
    disp('atentie! matricea atasata sistemului trebuie sa fie patrata!');
else
    for i=1:m
        conditie(i)=0;
        for j=[1:(i-1), (i+1):m]
            disp(j)
            conditie(i)=conditie(i)+abs(A(i,j)/A(i,i));
        end;
 end;
 disp('vectorul urmator trebuie sa aiba toate elem.<1');
 disp(conditie);
 co=input('tastati 1 daca se respecta conditia, iar pt NU orice tasta ');
 if co~=1
    disp('conditia de convergenta nu este respectata')
 else
    for s=1:m
        x(s)=0;
    end;
    for k=1:pasi
        for i=1:m
            suma(i)=0;
            l=[1:(i-1) (i+1):m];
            suma(i)=A(i,l)*(x(l))';
            x(i)=(1/A(i,i))*(B(i)-suma(i));
        end;
        x
     end;
     x
     
 end;
end; 