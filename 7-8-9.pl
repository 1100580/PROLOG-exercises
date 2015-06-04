totobola([],[]).
totobola([X|L],[Y|L1]):-list(X),!,member(Y,X),totobola(L,L1).
totobola([X|L],[X|L1]):-totobola(L,L1).

totoloto(0,_,[]).
totoloto(N,[X|L],[X|LS]):-N1 is N-1, totoloto(N1,L,LS).
totoloto(N,[_|L],L1):-totoloto(N,L,L1).

datas(A,B):-inter(A,B),inter(A,B,t(I3,F3)).
inter(t(I1,F1),t(I2,F2)):-(I2>F1;I1>F2),!,fail.
inter(t(I1,F1),t(I2,F2),t(I3,F3)):-max(I1,I2,I3),min(F1,F2,F3).
max(I1,I2,I3):-I1>=I2 ->I3 is I1; I3 is I2.
min(F1,F2,F3):-F1=<F2 ->F3 is F1; F3 is F2.