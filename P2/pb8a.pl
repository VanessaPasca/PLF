append6([],E,[E]).
append6([H|T],E,[H|TR]):-
    append6(T,E,TR).

reverse4([],[]).
reverse4([H|T],R):-
    reverse4(T,R1),
    append6(R1,H,R).

inc([],1,[1]).
inc([],0,[]).
inc([H|T],C,[HR|TR]):-
    HR is (H+C) mod 10,
    C1 is (H+C) div 10,
    inc(T,C1,TR).

doinc(L,R):-
    reverse4(L,L1),
    inc(L1,1,R1),
    reverse(R1,R).
