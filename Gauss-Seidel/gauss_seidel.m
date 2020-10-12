function f=gauss_seidel
%Metoda Gauss-Seidel
A=input('matricea sistemului = '); %Matricea de rezolvat
B=input('matricea rezultatelor = '); %Rezulatele matricii
pasi=input('cate iteratii doriti sa introduceti '); %Numarul de iteratii
[m n]=size(A); %Numarul de linii si de coloane
if m~=n %Daca nu avem matrice patratica nu rezolvam 
    disp('Eroare, matricea atasata sistemului trebuie sa fie patratatica');
else
    for i=1:m %Conditiile pentru Jacobi. Le-am pastrat fiindca nu stiu daca
        conditie(i)=0;                 % sunt necesare pentru Gauss sau nu
        for j=[1:(i-1), (i+1):m] % Toate elementele mai putin cele de pe
                                 % diagonala principala
            conditie(i)=conditie(i)+abs(A(i,j)/A(i,i)); %Suma de fractii
                                                        %in modul
        end
    end
 disp('vectorul urmator trebuie sa aiba toate elementele < 1'); 
 disp(conditie);
 co=input('tastati 1 daca se respecta conditia, iar daca nu orice tasta ');
 if co~=1 % Verificarea conditiei pentru Jacobi doarece Gauss-Seidel deriva
          % din Jacobi
    disp('conditia de convergenta nu este respectata')
 else
    %Rezolvarea Iteratiilor
    for s=1:m   
        x(s)=0; %Vectorul cu rezultate :x1, x2, x3...
    end
    for k=1:pasi  %Efectiv rezolvarea iteratiilor
        for i=1:m %Pentru fiecare ecuatie (linie)(caiet)
            suma(i)=0; %Suma "1" din formula Gauss-Seidel in functie de l
            suma2(i)=0;%Suma "2" din formula Gauss-Seidel in functie de p
            l=[1:(i-1), (i+1):(i-1)]; % l merge de la 1 la i-1
            p=[(i+1):(i-1), (i+1):m]; % p merge de la i+1 pana la m (final)
            suma(i)=A(i,l)*(x(l))'; % Literalmente calcularea sumei "1"
            suma2(i)=A(i,p)*(x(p))';% Literalmente calcularea sumei "2"
                                    % Ca in formula
            x(i)=(B(i)-suma(i)-suma2(i))/(A(i,i)); % Rezulatul xi al
                                                   % Iteratiei
        end
        x
     end
     x     
 end
end 