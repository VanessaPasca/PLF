
%adaugarea unui element pe ultima pozitie intr-o lista:
% list,int,list
% i,i,o
%
addLast([T],E,[T,E]).   %cand am in lista doar un elem
addLast([],E,[E]).
addLast([H|T],E,R):-
    addLast(T,E,Re),
    R=[H|Re].

%descompunerea in lista de pare si impare, cu numarare pare si impare
%list,list,int,int
%i,o,o,o

dec([],[],0,0).  %cand lista e vida, rez e vid si contoarele sunt 0

dec([H|T],R,Ce,Co):-   %element par
    M is mod(H,2),
    M =:= 0,

    dec(T,Re,Ce1,Co),
    R=[H|Re],   %elementul e adaugat la inceput
    Ce is Ce1+1.

dec([H|T],R,Ce,Co):-   %element impar
    M is mod(H,2),
    M =:= 1,
    dec(T,Re,Ce,Co1),
    addLast(Re,H,R),   %elementul e adaugat la final
    Co is Co1+1.



