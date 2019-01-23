countall([],0).
countall([_|T],R):-
    countall(T,Re),
    R is Re+1.

elempos([H|_],P,R):-
    P =:= 1,
    R is H.
elempos([_|T],P,R):-
    NewP is P-1,
    P > 0,
    elempos(T,NewP,R).

compute(A,L,K,N,R):-
    K < N,
    NewK is K+1,
    elempos(L,NewK,Rez),
    compute(A,L,NewK,N,Re),
    R=[[A,Rez]|Re].

compute(_,_,K,N,R):-
    K =:= N,
    R=[].

foreach([H|T],R):-
    countall([H|T],Rez),
    compute(H,[H|T],1,Rez,LR),
    foreach(T,Re),
    R=[LR|Re].

foreach([],[]).




