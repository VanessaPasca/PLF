%insert(L:list,E:elem,R:list)
insertt([H|T],E,R):-
    R=[E,H|T].
insertt([H|T],E,R):-
    insert(T,E,L),
    R=[H|L].
insertt([],E,[E]).

%perm(L:list,R:list)

perm([],[]).
perm([H|T],R):-
    perm(T,RT),
    insertt(RT,H,Rez),
    R=Rez.

setR(A,B,I,I):-
    AA is abs(A-B),
    AA\=1.
setR(A,B,_,1):-
    AA is abs(A-B),
    AA=1.
check(_,_,N,N,0).
check(E,[H|T],Pos,N,R):-
    Pos<N,
    Pos1 is Pos+1,
    check(E,T,Pos1,N,RT),
    setR(E,H,RT,R).


property([],_,_,-1).
property([H|T],Pos,List,R):-
    Pos1 is Pos+1,
    property(T,Pos1,List,R),
    check(H,List,1,Pos,R).

