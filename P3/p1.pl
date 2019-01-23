len([],0).
len([_|T],R):-
    len(T,R1),
    R is R1 +1.

subsett([],[]).
subsett([_|T],R):-
    subsett(T,R).
subsett([H|T],[H|TR]):-
    subsett(T,TR).

oneSolution(L,N,R):-
    subsett(L,R1),
    len(R1,N),
    R = R1.
allSolutions(L,N,Rall):-
    findall(Ri,oneSolution(L,N,Ri),Rall).
