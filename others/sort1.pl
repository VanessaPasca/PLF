% Sort a list with keeping double values in resulted list
%
%
% insSort(A: number, L:list, R:list)
% Inserts number A into L s.t. it's kept sorted
% Flow model: (i,i,o)
insSort(A,[H|T],R):-
    A=<H,
    R=[A,H|T].
insSort(A,[H|T],R):-
    A>H,
    insSort(A,T,RN),
    R=[H|RN].
insSort(A,[],[A]).

% sorteaza(L: list, R: list)
% Sorts the list L
% Flow: (i,o)
sorteaza(L,R):-
    sort1(L,[],R).    % instantiating with [] the accumulator for sort1

% sort1(L: list, Acc: list, R: list)
% Flow model: (i,i,o)
sort1([],Acc,Acc).
sort1([H|T],Acc,R):-
    insSort(H,Acc,NAcc),   % inserts sorted into accumulator Acc
    sort1(T,NAcc,R).




% For a heterogeneous list, formed from integer numbers and list of
% numbers, write a predicate to sort every
%sublist, keeping the doubles
%
%
% Heterogenuous lists

sortHet([],[]).
sortHet([H|T],R):-
    number(H),!,
    sortHet(T,Rez),
    R=[H|Rez].
sortHet([H|T],R):-
    is_list(H),!,
    sorteaza(H,Sorted),
    sortHet(T,Rez),
    R=[Sorted|Rez].




