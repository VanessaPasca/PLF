mergesort([],[],[]).
mergesort(L,[],L).
mergesort([],L,L).

mergesort([H1|T1],[H2|T2],R):-
    H1=<H2,
    mergesort(T1,[H2|T2],RT),
    R=[H1|RT].

mergesort([H1|T1],[H2|T2],R):-
    H2<H1,
    mergesort([H1|T1],T2,RT),
    R=[H2|RT].



