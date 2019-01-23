find([],_,0).
find([H],H,1).

find([H|_],E,R):-
    H =:= E,
    R is 1.
find([H|T],E,R):-
    H =\= E,
    find(T,E,R).

diff([],[],[]).

diff(L,[],L).

diff([],_,[]).

diff([H|T],L,R):-
    find(L,H,Rez),
    Rez =:= 0,
    diff(T,L,RL),
    R=[H|RL].

diff([H|T],L,R):-
    find(L,H,Rez),
    Rez =:= 1,
    diff(T,L,R).
