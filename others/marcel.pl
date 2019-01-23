gcd(M,N,R):-
     M=:=N,
    R is M.
	gcd(M,N,R):-
     N>M,
     Y is N-M,
    gcd(M,Y,R).
	gcd(M,N,R):-
     N<M,
     Y is M-N,
    gcd(Y,N,R).

	%Determine the lowest common multiple of a list formed from integer numbers.
	%lcmList(L: list, R:int)
	%Flow model(i,o)
	lcmList([L1],L1).
	lcmList([H|T],R):-
				  lcmList(T,RT),
				  Y is H*RT,
				  gcd(H,RT,Rez),
				  R is Y /Rez.
