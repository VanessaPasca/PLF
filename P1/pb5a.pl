find([],_,0).
find([H],H,1).

find([H|_],E,R):-
    H =:= E,
    R is 1.
find([H|T],E,R):-
    H =\= E,
    find(T,E,R).

union([],[],[]).
union([],L,L).
union(L,[],L).

union([H|T],L,R):-
    find(L,H,Rez),  %testeaza daca e element comun
    Rez =:= 1,
    union(T,L,R).  %daca e el comun, nu il adauga din prima lista, ci va fi adaugat mai traziu dintr-a doua

union([H|T],L,R):-
    find(L,H,Rez),
    Rez =:= 0,
    union(T,L,LR),
    R=[H|LR].    %daca nu e comun, il adauga din prima lista, din moment ce doar acolo e prezent


