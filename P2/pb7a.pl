%positions of the maximum element

posmax([],_,_,[]).
posmax([E],E,K,[K]).
posmax([H|T],M,K,R):-
    NewK is K+1,
    posmax(T,Mn,NewK,RT),
    compare(H,Mn,M,NewK,RT,R).


compare(H,M,M,Pos,RT,[Pos|RT]):-
    H=M.

compare(H,M,H,Pos,_,[Pos]):-
    H>M.

compare(H,M,M,_,RT,RT):-
    H<M.

computeposmax(L,R):-
      posmax(L,_,0,R).

