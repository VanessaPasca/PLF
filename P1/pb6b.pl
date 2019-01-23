remove([H|T],E,K,R):-
    H =:= E,
    K>0,
    NewK is K-1,
    remove(T,E,NewK,R).

remove([H|T],E,K,R):-
    H =\= E,
    remove(T,E,K,Re),
    R=[H|Re].
remove(L,_,0,L).   %sa stergi din orice lista, orice element de 0 ori e tot acea lista

remove([],_,_,[]).

