apaga(_,[],[]).
apaga(X,[X|T],T):-!.
apaga(X,[Y|T],[Y|T1]):-apaga(X,T,T1).

apagat(_,[],[]).
apagat(X,[X|T],L):-!,apaga(X,T,L).
apagat(X,[Y|T],[Y|T1]):-apaga(X,T,T1).

substitui(_,_,[],[]).
substitui(P,S,[P|L],[S|R]):-!,substitui(P,S,L,R).
substitui(P,S,[Y|L],[Y|R]):-substitui(P,S,L,R).

insere(1,E,L,[E|L]).
insere(P,E,[X|L],R):-P1 is P-1,!,insere(P1,E,L,[R|X]).