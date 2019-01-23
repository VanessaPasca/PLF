%gcd(X:number,Y:number,Z:number)
%Flow model: (i,o)
%X,Y - the numbers to find gcd for
%Z - a number which will return the gcd
gcd(0,X,X):- X>0,!.
gcd(X,Y,Z):-
    X>=Y,
    X1 is X-Y,
    gcd(X1,Y,Z).
gcd(X,Y,Z):-
    X<Y,
    Y1 is Y-X,
    gcd(X,Y1,Z).
% gdcl(L:list,Z)
% Flow model: (i,o)
% L - the list of elements
% Z - their gcd
gcdL([H,H1|T],Z):-
    gcd(H,H1,X),
    gcdL([X|T],Z).
gcdL([H1,H2],Z):-
    gcd(H1,H2,Z).
gcdL([L1],L1):-!.

