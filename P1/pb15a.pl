remove([H|T],E,R):-
    H =:= E,
    remove(T,E,R).

remove([H|T],E,R):-
    H =\= E,
    remove(T,E,Rez),
    R=[H|Rez].

remove([],_,[]).

set2([H|T],R):-
    remove(T,H,LR),
    set2(LR,Re),
    R=[H|Re].

set2([],[]).


