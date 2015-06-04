apaga(_,[],[]).
apaga(X,[X|T],T):-!.
apaga(X,[Y|T],[Y|T1]):-apaga(X,T,T1).

apagat(_,[],[]).
apagat(X,[X|T],L):-!,apaga(X,T,L).
apagat(X,[Y|T],[Y|T1]):-apaga(X,T,T1).