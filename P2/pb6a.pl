
append5([],E,[E]).
append5([H|T],E,[H|TR]):-
    append5(T,E,TR).

reverse2([],[]).
reverse2([H|T],R):-
    reverse2(T,R1),
    append5(R1,H,R).

prod(_,0,0,[]).
prod([],_,0,[]).
prod([],_,1,[1]).
prod(_,0,1,[1]).

prod([H|T],E,C,[HR|TR]):-
    HR is (H*E+C) mod 10,
    C1 is (H*E+C) div 10,
    prod(T,E,C1,TR).

doprod(L,E,R):-
    reverse2(L,L1),
    prod(L1,E,0,R1),
    reverse2(R1,R).
