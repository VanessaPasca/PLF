prodI([],1).
prodI([H|T],P):-
    H mod 2 =:= 0,
    prodI(T,P).
prodI([H|T],P):-
    H mod 2 =:=1,
    prodI(T,P1),
    P is H*P1.
