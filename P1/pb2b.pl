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

numberatom([H|T],R):-
    count([H|T],0,H,Rez),
    remove([H|T],H,LR),
    MinL=[H,Rez],
    numberatom(LR,LRez),
    R=[MinL|LRez].

numberatom([],[]).

