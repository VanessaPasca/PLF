
minimum(A,B,R):-
    A =< B,
    R is A.
minimum(A,B,R):-
    B =< A,
    R is B.

min([],0).
min([E],E).
min([H|T],R):-
    min(T,Rez),
    minimum(H,Rez,R).

remove([],_,_,[]).
remove(L,_,0,L).
remove([H|T],E,K,R):-
    H =:= E,
    K > 0,
    NewK is K-1,
    remove(T,E,NewK,R).

remove([H|T],E,K,R):-
    H =\= E,
    remove(T,E,K,Re),
    R=[H|Re].

rem(L,R):-
    min(L,M),
    remove(L,M,1,R).

