appendd([],E,[E]).
appendd([H|T],E,[H|TR]):-
    appendd(T,E,TR).

reversee([],[]).
reversee([H|T],R):-
    reversee(T,R1),
    appendd(R1,H,R).

decrement([],0,[]).
decrement([H|T],C,[HR|TR]):-
    H<C,
    HR is (H+10-C) mod 10,
    C1 is 1,
    decrement(T,C1,TR).
decrement([H|T],C,[HR|TR]):-
    H>=C,
    HR is H-C,
    C1 is 0,
    decrement(T,C1,TR).

dodec(L,R):-
    reversee(L,L1),
    decrement(L1,1,R1),
    reversee(R1,R).
