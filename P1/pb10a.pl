minimum(A,B,R):-
    A =< B,
    R is A.
minimum(A,B,R):-
    B =< A,
    R is B.

min([],0).
min([E],E).
min([H|T],R):-
    min(T,Rez),
    minimum(H,Rez,R).



valley([],_,_,1).
% daca am un element si nu e minimul, am ajuns la final fara sa dam de o
% eroare
valley([E],M,_,1):-
    E =\= M.
valley([E],M,_,0):-
    E =:= M.

% Daca am dat de minim, schimbam directia de verificare: de acum
% elementele trebuie sa fie crescatoare
valley([H|T],M,0,R):-
    H =:= M,
    valley([H|T],M,1,R).

%flag 0, verificam sa fie elementele in ordine descrescatoare
valley([H1,H2|T],M,0,R):-
    H2 < H1,
    valley([H2|T],M,0,R).

%daca cumva gasim ceva inneregula, setam R la 0
valley([H1,H2|_],_,0,R):-
    H2 >= H1,
    R is 0.

%flag 1, verificam sa fie in ordine crescatoare
valley([H1,H2|T],M,1,R):-
    H1 < H2,
    valley([H2|T],M,1,R).
%daca nu sunt, setam R la 0
valley([H1,H2|_],_,!,R):-
    H1 >= H2,
    R is 0.

check(L,R):-
    min(L,Rez),
    % 0 e un flag care indica directia: 0 pentru descrescatoare, 1 pentru crescatoare
    valley(L,Rez,0,R).
