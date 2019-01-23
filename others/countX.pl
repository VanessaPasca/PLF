%countX(L:list,C:int,R:int)

countX([],C,C).
countX([H|T],C,R):-
    X =:= 'X',
    H = X,
    NewC is C+1,
    countX(T,NewC,R).

countX([H|T],C,R):-
    H \= 'X',
    countX(T,C,R).

checkGood(L):-
    countX(L,0,R),
    R =< 2.
