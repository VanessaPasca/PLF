removeOneElem([_|T],T).
cor([],[]).
cor([H|T],LD):-
    H=0,
    LD1=[H|LD],
    cor(T,LD1).

cor([H|T],LD):-
    H=1,
    LD\=[],
    removeOneElem(LD,LD1),
    cor(T,LD1).

generateList(0,_,[]).
generateList(N,E,R):-
    N>0,
    NewN is N-1,
    generateList(NewN,E,RT),
    R=[E|RT].
