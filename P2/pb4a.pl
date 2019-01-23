computesum([],[],[],0).

computesum([E1],[E2],R,C):-
    S is E1+E2,
    S>=10,
    R is S-10,
    C is 1.

computesum([E1],[E2],R,C):-
    S is E1+E2,
    S<10,
    R is S,
    C is 0.

computesum([H1|T1],[H2|T2],R,C):-
    computesum(T1,T2,RT,CC),
    S is H1+H2+CC,
    check(S,Val,C),
    R=[Val|RT].

computesum([],[H|T],R,C):-
    computesum([],T,RT,CC),
    S is H+CC,
    check(S,Val,C),
    R=[Val|RT].

computesum([H|T],[],R,C):-
    computesum(T,[],RT,CC),
    S is H+CC,
    check(S,Val,C),
    R=[Val|RT].


check(S,Val,CR):-
    S>=10,
    Val is S-10,
    CR is 1.

check(S,S,0):-
    S<10.

computeall(L1,L2,R):-
    computesum(L1,L2,RT,C),
    C=1,!,
    R=[C,RT].
computeall(L1,L2,R):-
    computesum(L1,L2,R,C),
    C=0.
