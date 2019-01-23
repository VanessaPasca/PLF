count([H|T],C,E,R):-
    H =:= E,
    NewC is  C+1,
    count(T,NewC,E,R).

count([H|T],C,E,R):-
    H =\= E,
    count(T,C,E,R).

count([],C,_,C).

remove([H|T],E,R):-
    H =:= E,
    remove(T,E,R).

remove([H|T],E,R):-
    H =\= E,
    remove(T,E,Rez),
    R=[H|Rez].

remove([],_,[]).

removerep([],[]).

removerep([H|T],R):-
    count([H|T],0,H,Rez),  %le numara
    Rez >= 2, %daca sunt repetitive
    remove([H|T],H,LR),  %sterge din lista toate aparitiile acelui element
    removerep(LR,R).   %reaplica algoritmul pe lista rezultat al stergerii

removerep([H|T],R):-
    count([H|T],0,H,Rez),
    Rez =:= 1,
    removerep(T,LR),
    R=[H|LR].
