subs([],[]).
subs([H|T],[H|M]):-
    subset(T,M).
subs([_|T],R):-
    subset(T,R).

allsubs(L,R):-
    findall(R1,subs(L,R1),R).
