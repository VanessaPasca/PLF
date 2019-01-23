
%longest sequence of even nr
%

iseven(A):-
    M is mod(A,2),
    M=0.

%(list,int,list,int,list,int)
% (lista compusa, lungimea ei, lista maxima, lungimea ei, lista maxima
% dintre cele doua, lungimea ei)
%

test(CSeq,LC,_,Lung,CSeq,LC):-
    LC>Lung.
test(_,LC,MaxSeq,Lung,MaxSeq,Lung):-
    LC=<Lung.


maxseq([],[],0,[],0).


% daca numarul e par creste lungimea liste compuse si il adauga la lista
% compusa
maxseq([H|T],CSeq,LC,MaxSeq,Lung):-
    iseven(H),!,
    maxseq(T,CSeqR,LCR,MaxSeq,Lung),
    LC is LCR+1,
    CSeq=[H|CSeqR].
   % test(CSeq,LC,MaxSeqR,LungR,MaxSeq,Lung).


%daca e impar, testeaza lista compusa cu cea maxima
%apoi seteaza lista compusa la vid si lungimea ei la 0
maxseq([_|T],CSeq,LC,MaxSeq,Lung):-
    maxseq(T,CSeq1,LC1,MaxSeqR,LungR),
    test(CSeq1,LC1,MaxSeqR,LungR,MaxSeq,Lung),
    CSeq=[],
    LC is 0.

computemaxseq(L,MaxSq):-
    maxseq(L,_,_,MaxSq,_).








