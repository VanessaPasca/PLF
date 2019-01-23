checkLast([],1).

checkLast([E],R):-
    E =\= 2,
    R = 1.
checkLast([E],R):-
    E == 2,
    R = 0.
checkLast([_|T],R):-
    checkLast(T,R).
