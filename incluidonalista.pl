apaga(_,[],[]).
apaga(X,[X|T],T):-!.
apaga(X,[Y|T],[Y|T1]):-apaga(X,T,T1).

p([],[]).
p(L,[X|L1]):-apaga(X,L,Li),p(Li,L1).