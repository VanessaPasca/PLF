
createlist(M,N,R):-
    M =< N,
    NewM is M+1,
    createlist(NewM,N,Re),
    R=[M|Re].
createlist(M,N,R):-
    M > N,
    R=[].
