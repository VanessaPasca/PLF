%insert(L:list,E:integer,R:list)

%(i,i,o)

insert([],E,[E]).
insert([H|T],E,R):-
    R=[E,H|T].

insert([H|T],E,R):-
    insert(T,E,L),
    R=[H|L].

%perm(L:list,R:list)
%(i,o)

perm([],[]).
perm([H|T],R):-
    perm(T,RT),
    insert(RT,H,Rez),
    R=Rez.

%combinari(L:list,K:int,R:list)
%i,i,o

combinari(_,0,[]).
combinari([H|T],K,R):-
    NewK is K-1,
    K>0,
    combinari(T,NewK,Rez),
    R=[H|Rez].

combinari([_|T],K,R):-
    K>0,
    combinari(T,K,R).

%aranjamente(L:list,K:int,R:list)
%i,i,o
aranjamente(_,0,[]).
aranjamente(L,K,R):-
    combinari(L,K,Rez),
     %countAll(Rez,0,C),
   % C =:= 4,
    R = Rez.
    %perm(Rez,R),
    %R=Rez.

%add(L:list,L2:list,R:list)
%(i,i,0)
%Combines 2 lists
add([E],L2,[E|L2]).
add([H|T],L2,R):-
    add(T,L2,Rez),
    R=[H|Rez].

%biglist(L:list,K:int,R:list)
%i,i,o
%Takes a list and multiplies it by K times
biglist(L,K,R):-
    K>1,
    NewK is K-1,



    biglist(L,NewK,RT),
    add(L,RT,Rez),
    R = Rez.
biglist(L,K,R):-
    K =:= 1,
    add(L,[],R).

biglist([],_,[]).
%prodcart(L:list,K:int,R:list)
%i,i,o
% Given a list, obtains all possible ways of generating sets of K
% elements with the elements of the list
produscart(L,K,R):-
    biglist(L,K,Rez), %1,2,x,1,2,x,1,2,x,1,2,x
    aranjamente(Rez,4,R).

%checkLast(L:list,R:int)
%i,o
%checks if the last list is 2 or not; returns 0 if it is, 1 if it is not
checkLast([],1).

checkLast([E],R):-
    number(E),
    E =\= 2,
    R is 1,!.
checkLast([E],R):-
    number(E),
    E =:= 2,
    R is 0,!.

checkLast([E],R):-
    atom(E),
    R is 1.
checkLast([_|T],R):-
    checkLast(T,Rez),
    R is Rez.

%countX(L:list,C:int,R:int)
%i,i,o
%Counts how many X's are in the solutions
countX([],C,C).
countX([H|T],C,R):-
    number(H),
    countX(T,C,R).

countX([H|T],C,R):-
    atom(H),
    NewC is C+1,
    countX(T,NewC,R).

countAll([],Acc,Acc).
countAll([_|T],Acc,R):-
    Acc1 is Acc+1,
    countAll(T,Acc1,R).
isGood(L,Acc,R):-
    checkLast(L,Re),
    Re =:= 1,
    countX(L,0,Nr),!,
    Nr =< 2,
    R is Acc+1.
%onesol(L:list,R:list)
%generates one solution that satisfies the condition
onesol(L,R):-
    produscart(L,4,R),
    Rasp is 0,
    isGood(R,Rasp,Answer),
    Answer =:= 1,
    write(R).
%allsol(L:list,R:list)
%generates all solutions that satisfy the conditions
allsol(L,R):-
    findall(R1,onesol(L,R1),R).



