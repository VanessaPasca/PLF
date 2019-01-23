occur([H|T],E,R):-
    H =:= E,
    occur(T,E,Re),
    R is Re+1.

occur([],_,0).

occur([H|T],E,R):-
    H =\= E,
    occur(T,E,R).

set([H|T],R):-
    occur(T,H,Rez),
    Rez =:= 0,
    set(T,Re),
    R=[H|Re].

set([],[]).
set([H|T],R):-
    occur(T,H,Rez),
    Rez =\= 0,
    set(T,R).

