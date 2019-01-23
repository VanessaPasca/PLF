% el =number
% list =el*
% sumList(L:list, S:number)
%      flow model: (i,i) or (i,o)
%      L - the list of elements
%      S- the sum of the elements from the list
%member(L:list, E:el)
%      flow model: (i,i) or (i,o)
%      L - the list of elements
%      E - the element whose membership in the list is verified
%

sumList([],0).
sumList([H|T], S):-
    sumList(T, S1),
    S is S1 + H.
member([H|_], H).
member([_,T], E):-
    member(T, E).
