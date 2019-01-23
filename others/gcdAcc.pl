gcd(A,A,A).
gcd(A,B,R):-
    B>A,
    B1 is B-A,
    gcd(A,B1,RT),
    R is RT.

gcd(A,B,R):-
    A>B,
    A1 is A-B,
    gcd(A1,B,RT),
    R is RT.

gcdL([H],V,R):-
    gcd(H,V,R1),
    R is R1.
gcdL([H|T],V,R):-
    gcd(H,V,V1),
    gcdL(T,V1,RT),
    R is RT.

compute([H|T],R):-
    gcdL(T,H,R).

